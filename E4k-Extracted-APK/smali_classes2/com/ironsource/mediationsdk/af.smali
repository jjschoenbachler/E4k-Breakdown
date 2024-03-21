.class public final Lcom/ironsource/mediationsdk/af;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/ironsource/mediationsdk/ag;

.field private b:Lcom/ironsource/mediationsdk/utils/c;

.field private c:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/utils/c;Lcom/ironsource/mediationsdk/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/af;->b:Lcom/ironsource/mediationsdk/utils/c;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/af;->a:Lcom/ironsource/mediationsdk/ag;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/af;->b:Lcom/ironsource/mediationsdk/utils/c;

    iget-boolean v0, v0, Lcom/ironsource/mediationsdk/utils/c;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/af;->e()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/af$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/af$1;-><init>(Lcom/ironsource/mediationsdk/af;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/af;->b:Lcom/ironsource/mediationsdk/utils/c;

    iget-wide v2, v2, Lcom/ironsource/mediationsdk/utils/c;->k:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/af;->b:Lcom/ironsource/mediationsdk/utils/c;

    iget-boolean v0, v0, Lcom/ironsource/mediationsdk/utils/c;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/af;->e()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/af$2;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/af$2;-><init>(Lcom/ironsource/mediationsdk/af;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/af;->b:Lcom/ironsource/mediationsdk/utils/c;

    iget-wide v2, v2, Lcom/ironsource/mediationsdk/utils/c;->k:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/af;->e()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/af;->a:Lcom/ironsource/mediationsdk/ag;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/ag;->e()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/af;->e()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/af;->c:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/af$3;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/af$3;-><init>(Lcom/ironsource/mediationsdk/af;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/af;->b:Lcom/ironsource/mediationsdk/utils/c;

    iget-wide v2, v2, Lcom/ironsource/mediationsdk/utils/c;->j:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
