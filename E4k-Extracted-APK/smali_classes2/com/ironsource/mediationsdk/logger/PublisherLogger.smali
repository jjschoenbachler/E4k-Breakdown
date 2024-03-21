.class public Lcom/ironsource/mediationsdk/logger/PublisherLogger;
.super Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.source "PublisherLogger.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "publisher"


# instance fields
.field private mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "publisher"

    .line 18
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/logger/LogListener;I)V
    .locals 1

    const-string v0, "publisher"

    .line 23
    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/logger/PublisherLogger;)Lcom/ironsource/mediationsdk/logger/LogListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 29
    :try_start_0
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ironsource/mediationsdk/logger/PublisherLogger$1;-><init>(Lcom/ironsource/mediationsdk/logger/PublisherLogger;Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;I)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    throw p1
.end method

.method public logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 42
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    return-void
.end method
