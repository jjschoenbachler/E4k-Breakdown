.class public Lcom/ironsource/mediationsdk/RVListenerWrapper;
.super Lcom/ironsource/mediationsdk/sdk/BaseListenerWrapper;
.source "RVListenerWrapper.java"


# static fields
.field private static final sInstance:Lcom/ironsource/mediationsdk/RVListenerWrapper;


# instance fields
.field private mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

.field private mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->sInstance:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/sdk/BaseListenerWrapper;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/RVListenerWrapper;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;
    .locals 1

    .line 23
    sget-object v0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->sInstance:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 291
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$17;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper$17;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    .line 278
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper$18;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$7;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RVListenerWrapper$7;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$8;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper$8;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$12;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RVListenerWrapper$12;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManualListener;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper$3;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoManualListener;

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$4;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper$4;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$5;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RVListenerWrapper$5;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$6;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper$6;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdReady(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManualListener;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RVListenerWrapper$1;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoManualListener;

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper$2;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$13;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper$13;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    .line 226
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$15;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper$15;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    .line 252
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper$16;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$11;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RVListenerWrapper$11;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$9;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper$9;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;-><init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    return-void
.end method

.method public setListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-void
.end method
