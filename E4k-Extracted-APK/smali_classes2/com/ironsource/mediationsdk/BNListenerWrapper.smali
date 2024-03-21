.class public Lcom/ironsource/mediationsdk/BNListenerWrapper;
.super Lcom/ironsource/mediationsdk/sdk/BaseListenerWrapper;
.source "BNListenerWrapper.java"


# static fields
.field private static final sInstance:Lcom/ironsource/mediationsdk/BNListenerWrapper;


# instance fields
.field private mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

.field private mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/ironsource/mediationsdk/BNListenerWrapper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/BNListenerWrapper;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->sInstance:Lcom/ironsource/mediationsdk/BNListenerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/sdk/BaseListenerWrapper;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    .line 23
    iput-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/BNListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/BannerListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/BNListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getAdInfo(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;
    .locals 1

    .line 17
    sget-object v0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->sInstance:Lcom/ironsource/mediationsdk/BNListenerWrapper;

    return-object v0
.end method


# virtual methods
.method public getLevelPlayListener()Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    return-object v0
.end method

.method public getListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    return-object v0
.end method

.method public onBannerAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNListenerWrapper$11;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BNListenerWrapper$11;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    if-eqz v0, :cond_1

    .line 188
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNListenerWrapper$12;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper$12;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNListenerWrapper$9;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BNListenerWrapper$9;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    if-eqz v0, :cond_1

    .line 162
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNListenerWrapper$10;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper$10;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 72
    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v0, Lcom/ironsource/mediationsdk/BNListenerWrapper$3;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper$3;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 83
    :cond_0
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    if-eqz p2, :cond_1

    .line 84
    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v0, Lcom/ironsource/mediationsdk/BNListenerWrapper$4;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper$4;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onBannerAdLoaded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 46
    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v0, Lcom/ironsource/mediationsdk/BNListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/BNListenerWrapper$1;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    if-eqz p2, :cond_1

    .line 58
    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v0, Lcom/ironsource/mediationsdk/BNListenerWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper$2;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNListenerWrapper$7;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BNListenerWrapper$7;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNListenerWrapper$8;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper$8;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNListenerWrapper$5;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BNListenerWrapper$5;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNListenerWrapper$6;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper$6;-><init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mAdInfoListener:Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    return-void
.end method

.method public setListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    return-void
.end method
