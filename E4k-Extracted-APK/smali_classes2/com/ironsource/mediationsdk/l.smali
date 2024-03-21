.class public final Lcom/ironsource/mediationsdk/l;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/ironsource/mediationsdk/l;


# instance fields
.field a:I

.field private c:J

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/l;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/l;->d:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/ironsource/mediationsdk/l;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/l;->b:Lcom/ironsource/mediationsdk/l;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ironsource/mediationsdk/l;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/l;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/l;->b:Lcom/ironsource/mediationsdk/l;

    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/l;->b:Lcom/ironsource/mediationsdk/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/l;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/l;->d:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/l;->c:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/ironsource/mediationsdk/l;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/l;->b(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/l;->d:Z

    iget v2, p0, Lcom/ironsource/mediationsdk/l;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long/2addr v2, v0

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "delaying callback by "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v0, Lcom/ironsource/mediationsdk/l$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/l$1;-><init>(Lcom/ironsource/mediationsdk/l;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    invoke-static {v0, v2, v3}, Lcom/ironsource/environment/e/c;->b(Ljava/lang/Runnable;J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/l;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/l;->d:Z

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/l;->d:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
