.class public Lcom/ironsource/sdk/controller/ControllerView;
.super Landroid/widget/FrameLayout;
.source "ControllerView.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWebViewController:Lcom/ironsource/sdk/controller/WebController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/ControllerView;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/ControllerView;)Landroid/view/ViewGroup;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->getWindowDecorViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private addViewToWindow()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 79
    new-instance v1, Lcom/ironsource/sdk/controller/ControllerView$1;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/ControllerView$1;-><init>(Lcom/ironsource/sdk/controller/ControllerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getNavigationBarPadding()I
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    .line 166
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-le v2, v3, :cond_3

    .line 168
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 171
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 172
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 175
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 177
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    if-lez v0, :cond_0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v2

    :cond_0
    return v1

    .line 179
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    if-lez v0, :cond_2

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v1, v0, v2

    :cond_2
    return v1

    :catch_0
    :cond_3
    return v1
.end method

.method private getStatusBarHeight()I
    .locals 5

    const/4 v0, 0x0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method private getStatusBarPadding()I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->getStatusBarHeight()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getWindowDecorViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeViewFromWindow()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 95
    new-instance v1, Lcom/ironsource/sdk/controller/ControllerView$2;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/ControllerView$2;-><init>(Lcom/ironsource/sdk/controller/ControllerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setPaddingByOrientation(II)V
    .locals 3

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, v2, p1, v2, p2}, Lcom/ironsource/sdk/controller/ControllerView;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 125
    invoke-virtual {p0, v2, p1, p2, v2}, Lcom/ironsource/sdk/controller/ControllerView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 54
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->resume()V

    .line 55
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "main"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/sdk/controller/WebController;->viewableChange(ZLjava/lang/String;)V

    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 2

    .line 201
    invoke-static {}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->getInstance()Lcom/ironsource/sdk/handlers/BackButtonHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->handleBackButton(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onCloseRequested()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->removeViewFromWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->pause()V

    .line 63
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "main"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/sdk/controller/WebController;->viewableChange(ZLjava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    sget-object v1, Lcom/ironsource/sdk/controller/WebController$State;->Gone:Lcom/ironsource/sdk/controller/WebController$State;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->setState(Lcom/ironsource/sdk/controller/WebController$State;)V

    .line 67
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->removeVideoEventsListener()V

    .line 68
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->removeWebViewControllerChangeListener()V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerView;->removeAllViews()V

    return-void
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public showInterstitial(Lcom/ironsource/sdk/controller/WebController;)V
    .locals 1

    .line 39
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    .line 40
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p1, p0}, Lcom/ironsource/sdk/controller/WebController;->setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V

    .line 41
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/WebController;->requestFocus()Z

    .line 43
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->getStatusBarPadding()I

    move-result p1

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->getNavigationBarPadding()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/sdk/controller/ControllerView;->setPaddingByOrientation(II)V

    .line 47
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerView;->addViewToWindow()V

    return-void
.end method
