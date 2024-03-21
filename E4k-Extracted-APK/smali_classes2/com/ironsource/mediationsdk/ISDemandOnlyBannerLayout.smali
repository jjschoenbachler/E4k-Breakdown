.class public Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;
.super Landroid/widget/FrameLayout;
.source "ISDemandOnlyBannerLayout.java"


# instance fields
.field private isDestroyed:Z

.field private mActivity:Landroid/app/Activity;

.field private mBannerView:Landroid/view/View;

.field private mIsBannerDisplayed:Z

.field private mPlacementName:Ljava/lang/String;

.field private mSize:Lcom/ironsource/mediationsdk/ISBannerSize;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed:Z

    .line 21
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mIsBannerDisplayed:Z

    .line 25
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mActivity:Landroid/app/Activity;

    if-nez p2, :cond_0

    .line 27
    sget-object p2, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 29
    :cond_0
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mIsBannerDisplayed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;)Landroid/view/View;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mBannerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mBannerView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method addViewWithFrameLayoutParams(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    .line 122
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$2;-><init>(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected destroyBanner()V
    .locals 1

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mActivity:Landroid/app/Activity;

    .line 35
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 36
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mPlacementName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mBannerView:Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->removeBannerListener()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBannerDemandOnlyListener()Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;
    .locals 1

    .line 88
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getListener()Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    move-result-object v0

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mBannerView:Landroid/view/View;

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed:Z

    return v0
.end method

.method public removeBannerListener()V
    .locals 2

    .line 83
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;)V

    return-void
.end method

.method sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 97
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;-><init>(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method sendBannerAdLoaded()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->onBannerAdLoaded()V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mIsBannerDisplayed:Z

    return-void
.end method

.method public setBannerDemandOnlyListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;)V
    .locals 2

    .line 75
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;)V

    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->mPlacementName:Ljava/lang/String;

    return-void
.end method
