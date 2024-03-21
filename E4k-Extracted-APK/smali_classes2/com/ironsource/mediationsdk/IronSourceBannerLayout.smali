.class public Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
.super Landroid/widget/FrameLayout;
.source "IronSourceBannerLayout.java"


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

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed:Z

    .line 23
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mIsBannerDisplayed:Z

    .line 27
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    if-nez p2, :cond_0

    .line 29
    sget-object p2, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 31
    :cond_0
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mIsBannerDisplayed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Landroid/view/View;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method addViewWithFrameLayoutParams(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    .line 152
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$2;-><init>(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected destroyBanner()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    .line 46
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 47
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->removeBannerListener()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBannerListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;
    .locals 1

    .line 115
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v0

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    return-object v0
.end method

.method public getLevelPlayBannerListener()Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;
    .locals 1

    .line 119
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getLevelPlayListener()Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed:Z

    return v0
.end method

.method protected makeCopy()Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 3

    .line 35
    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    .line 36
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    .line 37
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getLevelPlayListener()Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setLevelPlayBannerListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V

    .line 38
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setPlacementName(Ljava/lang/String;)V

    return-object v0
.end method

.method public removeBannerListener()V
    .locals 2

    .line 108
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    .line 111
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V

    return-void
.end method

.method sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 2

    .line 128
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;-><init>(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method sendBannerAdLoaded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->onBannerAdLoaded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V

    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mIsBannerDisplayed:Z

    return-void
.end method

.method public setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V
    .locals 2

    .line 86
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    return-void
.end method

.method public setLevelPlayBannerListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V
    .locals 2

    .line 100
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V

    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    return-void
.end method
