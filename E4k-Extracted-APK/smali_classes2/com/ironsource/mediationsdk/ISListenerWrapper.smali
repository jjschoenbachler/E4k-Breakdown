.class public Lcom/ironsource/mediationsdk/ISListenerWrapper;
.super Lcom/ironsource/mediationsdk/sdk/BaseListenerWrapper;
.source "ISListenerWrapper.java"


# static fields
.field private static final sInstance:Lcom/ironsource/mediationsdk/ISListenerWrapper;


# instance fields
.field private mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

.field private mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/ironsource/mediationsdk/ISListenerWrapper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->sInstance:Lcom/ironsource/mediationsdk/ISListenerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/sdk/BaseListenerWrapper;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ISListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/ISListenerWrapper;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/ISListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/ISListenerWrapper;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/ISListenerWrapper;->sInstance:Lcom/ironsource/mediationsdk/ISListenerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 222
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getListener()Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInterstitialAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$13;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ISListenerWrapper$13;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$14;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper$14;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$7;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ISListenerWrapper$7;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$8;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper$8;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper$3;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$4;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper$4;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$5;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ISListenerWrapper$5;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$6;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper$6;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdReady(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ISListenerWrapper$1;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper$2;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$11;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper$11;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/ISListenerWrapper$12;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$9;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ISListenerWrapper$9;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_1

    .line 157
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISListenerWrapper$10;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper$10;-><init>(Lcom/ironsource/mediationsdk/ISListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V
    .locals 0

    monitor-enter p0

    .line 32
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .locals 0

    monitor-enter p0

    .line 28
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    throw p1
.end method
