.class public Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;
.super Landroid/widget/FrameLayout;
.source "ISNAdViewContainer.java"

# interfaces
.implements Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;


# static fields
.field private static final TAG:Ljava/lang/String; = "IronSourceAdContainer"


# instance fields
.field private isBannerDisplay:Z

.field private mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->isBannerDisplay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->isBannerDisplay:Z

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->isBannerDisplay:Z

    .line 37
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    invoke-virtual {p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewSize()Lcom/ironsource/sdk/ISNAdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/ISNAdSize;->getWidth()I

    move-result v0

    .line 39
    invoke-virtual {p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewSize()Lcom/ironsource/sdk/ISNAdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/ISNAdSize;->getHeight()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    .line 43
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getPresentingView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;)Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    return-object p1
.end method

.method private autoRequestToDestroy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->buildParamsObjectForAdViewVisibility()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "configs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "visibilityParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v1, "adViewId"

    .line 84
    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v2}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isBNAutoRemove"

    const/4 v3, 0x1

    .line 85
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isBannerDisplay"

    iget-boolean v3, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->isBannerDisplay:Z

    .line 86
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v1

    const-string v2, "destroyBanner"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private requestToDestroy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->buildParamsObjectForAdViewVisibility()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "configs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "visibilityParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v1, "adViewId"

    .line 69
    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v2}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isBNAutoRemove"

    const/4 v3, 0x0

    .line 70
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isBannerDisplay"

    iget-boolean v3, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->isBannerDisplay:Z

    .line 71
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 73
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v1

    const-string v2, "destroyBanner"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->sendMessageToController(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->requestToDestroy()V

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mAdPresenter or mAdPresenter.getAdViewLogic() are null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPresentingView()Landroid/webkit/WebView;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lcom/ironsource/sdk/ISNAdSize;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewSize()Lcom/ironsource/sdk/ISNAdSize;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/ironsource/sdk/ISNAdSize;

    invoke-direct {v0}, Lcom/ironsource/sdk/ISNAdSize;-><init>()V

    return-object v0
.end method

.method public loadWithUrl(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->loadWithUrl(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 114
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "IronSourceAdContainer"

    const-string v1, "onAttachedToWindow:"

    .line 115
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->isBannerDisplay:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "IronSourceAdContainer"

    const-string v1, "onDetachedFromWindow:"

    .line 123
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->isBannerDisplay:Z

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->autoRequestToDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IronSourceAdContainer"

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string v0, "IronSourceAdContainer"

    const-string v1, "in onDetachedFromWindow mAdPresenter or mAdPresenter.getLogic() are null"

    .line 126
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    const-string p1, "IronSourceAdContainer"

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object p1

    const-string v0, "isVisible"

    .line 104
    invoke-virtual {p0}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->isShown()Z

    move-result v1

    .line 101
    invoke-virtual {p1, v0, p2, v1}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->updateViewVisibilityParameters(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    const-string v0, "IronSourceAdContainer"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    const-string v1, "isWindowVisible"

    .line 151
    invoke-virtual {p0}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->isShown()Z

    move-result v2

    .line 148
    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->updateViewVisibilityParameters(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized performCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getAdViewLogic()Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/ISNAdView/ISNAdViewLogic;->reportAdContainerWasRemoved()V

    .line 182
    sget-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    new-instance v1, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;-><init>(Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 178
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 176
    monitor-exit p0

    throw p1
.end method

.method public performWebViewAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->performWebViewAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendHandleGetViewVisibility(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->sendHandleGetViewVisibility(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendMessageToAd(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->mAdPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->sendMessageToAd(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
