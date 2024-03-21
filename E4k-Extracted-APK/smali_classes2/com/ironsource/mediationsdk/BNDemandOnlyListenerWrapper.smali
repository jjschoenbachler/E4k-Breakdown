.class public Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;
.super Ljava/lang/Object;
.source "BNDemandOnlyListenerWrapper.java"


# static fields
.field private static final sInstance:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;


# instance fields
.field private mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->sInstance:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    return-object p0
.end method

.method public static getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;
    .locals 1

    .line 14
    sget-object v0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->sInstance:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    return-object v0
.end method

.method public onBannerAdClicked()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$3;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$3;-><init>(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBannerAdLeftApplication()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$6;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$6;-><init>(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$1;-><init>(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBannerAdLoaded()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$2;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$2;-><init>(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBannerAdScreenDismissed()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$5;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$5;-><init>(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onBannerAdScreenPresented()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$4;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$4;-><init>(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->mListener:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    return-void
.end method
