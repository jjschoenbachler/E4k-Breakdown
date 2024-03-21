.class Lcom/google/firebase/messaging/TopicsSubscriber;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# static fields
.field private static final MAX_DELAY_SEC:J


# instance fields
.field private final context:Landroid/content/Context;

.field private final iid:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final metadata:Lcom/google/firebase/iid/Metadata;

.field private final pendingOperations:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "pendingOperations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final rpc:Lcom/google/firebase/iid/GmsRpc;

.field private final store:Lcom/google/firebase/messaging/TopicsStore;

.field private final syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private syncScheduledOrRunning:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/TopicsSubscriber;->MAX_DELAY_SEC:J

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/messaging/TopicsStore;Lcom/google/firebase/iid/GmsRpc;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p6    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncScheduledOrRunning:Z

    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->metadata:Lcom/google/firebase/iid/Metadata;

    iput-object p3, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    iput-object p4, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->rpc:Lcom/google/firebase/iid/GmsRpc;

    iput-object p5, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private addToPendingOperations(Lcom/google/firebase/messaging/TopicOperation;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/TopicOperation;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    .line 1
    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayDeque;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    .line 5
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 6
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 1
    invoke-static {p0, v1, v2, v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    .line 2
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 6
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 8
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private blockingSubscribeToTopic(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/TopicsSubscriber;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/InstanceIdResult;

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->rpc:Lcom/google/firebase/iid/GmsRpc;

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/iid/InstanceIdResult;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/firebase/iid/GmsRpc;->subscribeToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void
.end method

.method private blockingUnsubscribeFromTopic(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->iid:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/TopicsSubscriber;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/InstanceIdResult;

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->rpc:Lcom/google/firebase/iid/GmsRpc;

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/iid/InstanceIdResult;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/firebase/iid/GmsRpc;->unsubscribeFromTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->awaitTask(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void
.end method

.method static createInstance(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p7    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            "Lcom/google/firebase/iid/Metadata;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/messaging/TopicsSubscriber;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/firebase/iid/GmsRpc;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/GmsRpc;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V

    invoke-static {p1, p2, v6, p6, p7}, Lcom/google/firebase/messaging/TopicsSubscriber;->createInstance(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/iid/GmsRpc;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static createInstance(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/iid/GmsRpc;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p4    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            "Lcom/google/firebase/iid/Metadata;",
            "Lcom/google/firebase/iid/GmsRpc;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/messaging/TopicsSubscriber;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/TopicsSubscriber$$Lambda$0;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/iid/GmsRpc;)V

    invoke-static {p4, v6}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static isDebugLogEnabled()Z
    .locals 5

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ne v0, v4, :cond_1

    const-string v0, "FirebaseMessaging"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    return v3
.end method

.method static final synthetic lambda$createInstance$0$TopicsSubscriber(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/iid/GmsRpc;)Lcom/google/firebase/messaging/TopicsSubscriber;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/TopicsStore;->getInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/TopicsStore;

    move-result-object v3

    new-instance v7, Lcom/google/firebase/messaging/TopicsSubscriber;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/TopicsSubscriber;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/Metadata;Lcom/google/firebase/messaging/TopicsStore;Lcom/google/firebase/iid/GmsRpc;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v7
.end method

.method private markCompletePendingOperation(Lcom/google/firebase/messaging/TopicOperation;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    .line 1
    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startSync()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->isSyncScheduledOrRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/TopicsSubscriber;->syncWithDelaySecondsInternal(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method hasPendingOperation()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/messaging/TopicsStore;->getNextTopicOperation()Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized isSyncScheduledOrRunning()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncScheduledOrRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method performTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getOperation()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x53

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 8
    :try_start_1
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSubscriber;->isDebugLogEnabled()Z

    move-result v1

    goto :goto_2

    .line 9
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getTopic()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {p0, v1}, Lcom/google/firebase/messaging/TopicsSubscriber;->blockingUnsubscribeFromTopic(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSubscriber;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "FirebaseMessaging"

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getTopic()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsubscribe from topic: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " succeeded."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getTopic()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {p0, v1}, Lcom/google/firebase/messaging/TopicsSubscriber;->blockingSubscribeToTopic(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSubscriber;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "FirebaseMessaging"

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getTopic()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Subscribe to topic: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " succeeded."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    if-eqz v1, :cond_3

    const-string v1, "FirebaseMessaging"

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown topic operation"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_3
    return v4

    :catch_0
    move-exception p1

    const-string v1, "SERVICE_NOT_AVAILABLE"

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "INTERNAL_SERVER_ERROR"

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 13
    :cond_4
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p1, "FirebaseMessaging"

    const-string v1, "Topic operation failed without exception message. Will retry Topic operation."

    .line 14
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 15
    :cond_5
    throw p1

    .line 12
    :cond_6
    :goto_4
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x35

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Topic operation failed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Will retry Topic operation."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FirebaseMessaging"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method scheduleSyncTaskWithDelaySeconds(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1
    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method scheduleTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/TopicOperation;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/TopicsStore;->addTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/messaging/TopicsSubscriber;->addToPendingOperations(Lcom/google/firebase/messaging/TopicOperation;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized setSyncScheduledOrRunning(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncScheduledOrRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method startTopicsSyncIfNecessary()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->hasPendingOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->startSync()V

    :cond_0
    return-void
.end method

.method subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/messaging/TopicOperation;->subscribe(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->scheduleTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->startTopicsSyncIfNecessary()V

    return-object p1
.end method

.method syncTopics()Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/messaging/TopicsStore;->getNextTopicOperation()Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSubscriber;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseMessaging"

    const-string v1, "topic sync succeeded"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/TopicsSubscriber;->performTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/TopicsStore;->removeTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z

    .line 5
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/TopicsSubscriber;->markCompletePendingOperation(Lcom/google/firebase/messaging/TopicOperation;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_1
    nop

    goto :goto_1
.end method

.method syncWithDelaySecondsInternal(J)V
    .locals 10

    add-long v0, p1, p1

    const-wide/16 v2, 0x1e

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/TopicsSubscriber;->MAX_DELAY_SEC:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    new-instance v0, Lcom/google/firebase/messaging/TopicsSyncTask;

    iget-object v6, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->metadata:Lcom/google/firebase/iid/Metadata;

    move-object v4, v0

    move-object v5, p0

    .line 2
    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/messaging/TopicsSyncTask;-><init>(Lcom/google/firebase/messaging/TopicsSubscriber;Landroid/content/Context;Lcom/google/firebase/iid/Metadata;J)V

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/messaging/TopicsSubscriber;->scheduleSyncTaskWithDelaySeconds(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->setSyncScheduledOrRunning(Z)V

    return-void
.end method

.method unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/messaging/TopicOperation;->unsubscribe(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->scheduleTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->startTopicsSyncIfNecessary()V

    return-object p1
.end method
