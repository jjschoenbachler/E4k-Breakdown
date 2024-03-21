.class public Lcom/ironsource/sdk/controller/ControllerActivity;
.super Landroid/app/Activity;
.source "ControllerActivity.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
.implements Lcom/ironsource/sdk/controller/VideoEventsListener;


# static fields
.field private static CONTAINER_IS_NULL:Ljava/lang/String; = "removeWebViewContainerView | mContainer is null"

.field private static final CONTROLLER_WEB_VIEW_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ControllerActivity"

.field private static VIEW_IS_NULL:Ljava/lang/String; = "removeWebViewContainerView | view is null"


# instance fields
.field final MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

.field public currentRequestedRotation:I

.field private final decorViewSettings:Ljava/lang/Runnable;

.field private mAdWebViewId:Ljava/lang/String;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mControllerClearedFromOnPause:Z

.field private mIsImmersive:Z

.field private mJsTriggerWebviewLifecycle:Z

.field private mProductType:Ljava/lang/String;

.field private mState:Lcom/ironsource/sdk/data/AdUnitsState;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mWebViewController:Lcom/ironsource/sdk/controller/WebController;

.field private mWebViewFrameContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    .line 67
    new-instance v1, Lcom/ironsource/sdk/controller/ControllerActivity$1;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$1;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/ControllerActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/controller/ControllerActivity;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelScreenOn()V
    .locals 1

    .line 435
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$4;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$4;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearWebviewController()V
    .locals 3

    .line 321
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "clearWebviewController"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "clearWebviewController, null"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    sget-object v1, Lcom/ironsource/sdk/controller/WebController$State;->Gone:Lcom/ironsource/sdk/controller/WebController$State;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->setState(Lcom/ironsource/sdk/controller/WebController$State;)V

    .line 328
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->removeVideoEventsListener()V

    .line 329
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->removeWebViewControllerChangeListener()V

    .line 330
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createWebViewFrameContainer(Ljava/lang/String;)Landroid/widget/FrameLayout;
    .locals 2

    .line 176
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->isWPAD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/WebController;->getLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->getInstance()Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->getAdView(Ljava/lang/String;)Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;->getPresentingView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/WebViewUtils;->createLayout(Landroid/content/Context;Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 366
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->isControllerView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 367
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 369
    :cond_0
    invoke-static {}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->getInstance()Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mAdWebViewId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->getAdView(Ljava/lang/String;)Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;->getPresentingView()Landroid/webkit/WebView;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private handleOrientationState(Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_3

    const-string p2, "landscape"

    .line 208
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setInitiateLandscapeOrientation()V

    goto :goto_0

    :cond_0
    const-string p2, "portrait"

    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setInitiatePortraitOrientation()V

    goto :goto_0

    :cond_1
    const-string p2, "device"

    .line 216
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 218
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->isDeviceOrientationLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 220
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getRequestedOrientation()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    const/4 p1, 0x4

    .line 224
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private hideActivityStatusBar()V
    .locals 2

    .line 421
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private hideActivityTitle()V
    .locals 1

    const/4 v0, 0x1

    .line 417
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->requestWindowFeature(I)Z

    return-void
.end method

.method private initOrientationState()V
    .locals 4

    .line 189
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation_set_flag"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rotation_set_flag"

    const/4 v3, 0x0

    .line 193
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 196
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    return-void
.end method

.method private isControllerView()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mAdWebViewId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWPAD(Ljava/lang/String;)Z
    .locals 2

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private keepScreenOn()V
    .locals 1

    .line 426
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$3;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$3;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeWebViewContainerView()V
    .locals 5

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 341
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getCurrentView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 344
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->VIEW_IS_NULL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->CONTAINER_IS_NULL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 357
    sget-object v1, Lcom/ironsource/sdk/Events/SDK5Events;->removeWebViewFailed:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    new-instance v2, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v2}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    const-string v3, "callfailreason"

    .line 358
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object v2

    .line 357
    invoke-static {v1, v2}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    .line 359
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWebViewContainerView fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setInitiateLandscapeOrientation()V
    .locals 4

    .line 448
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 450
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiateLandscapeOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 453
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v0, v2, :cond_1

    .line 456
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_180"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 459
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_270 Right Landscape"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 462
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 465
    :cond_3
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "No Rotation"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setInitiatePortraitOrientation()V
    .locals 3

    .line 474
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 476
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiatePortraitOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 479
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 482
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_180"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 483
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 485
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_270 Right Landscape"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 488
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 491
    :cond_3
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "No Rotation"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackButtonPressed()Z
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 398
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->getInstance()Lcom/ironsource/sdk/handlers/BackButtonHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->handleBackButton(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCloseRequested()V
    .locals 0

    .line 381
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    :try_start_0
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->hideActivityTitle()V

    .line 95
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->hideActivityStatusBar()V

    .line 98
    invoke-static {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getControllerManager()Lcom/ironsource/sdk/controller/ControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->getController()Lcom/ironsource/sdk/controller/IronSourceController;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/controller/WebController;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    .line 101
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 104
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/WebController;->setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/WebController;->setVideoEventsListener(Lcom/ironsource/sdk/controller/VideoEventsListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "productType"

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "immersive"

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    const-string v2, "adViewId"

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mAdWebViewId:Ljava/lang/String;

    .line 111
    iput-boolean v3, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mControllerClearedFromOnPause:Z

    const-string v2, "ctrWVPauseResume"

    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mJsTriggerWebviewLifecycle:Z

    .line 118
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ironsource/sdk/controller/ControllerActivity$2;

    invoke-direct {v2, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$2;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "state"

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/data/AdUnitsState;

    if-eqz p1, :cond_1

    .line 138
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 139
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/WebController;->getSavedState()Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 148
    :cond_3
    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 149
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mAdWebViewId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->createWebViewFrameContainer(Ljava/lang/String;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    .line 155
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    .line 158
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 160
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    .line 164
    :cond_4
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->initOrientationState()V

    .line 166
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 308
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 312
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mControllerClearedFromOnPause:Z

    if-nez v0, :cond_0

    .line 315
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy | destroyedFromBackground"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->clearWebviewController()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->inCustomView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/WebController;->hideCustomView()V

    const/4 p1, 0x1

    return p1

    .line 503
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .locals 0

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 261
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause, isFinishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {p0}, Lcom/ironsource/sdk/controller/SoundHelper;->abandonAudioFocus(Landroid/app/Activity;)V

    .line 264
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/WebController;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 267
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mJsTriggerWebviewLifecycle:Z

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->pause()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->viewableChange(ZLjava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "onPause"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mControllerClearedFromOnPause:Z

    .line 283
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->clearWebviewController()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/WebController;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 247
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mJsTriggerWebviewLifecycle:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->resume()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->viewableChange(ZLjava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_1
    invoke-static {p0}, Lcom/ironsource/sdk/controller/SoundHelper;->requestAudioFocus(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    const-string v0, "state"

    .line 236
    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 290
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "onStart"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 299
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "onStop"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 410
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    const-string v2, "onUserLeaveHint"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoPaused()V
    .locals 1

    const/4 v0, 0x0

    .line 535
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoResumed()V
    .locals 1

    const/4 v0, 0x1

    .line 540
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 530
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onVideoStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 550
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 521
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 523
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 524
    iget-object p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3

    .line 512
    iget v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    if-eq v0, p1, :cond_0

    .line 513
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation: Req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iput p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 515
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public toggleKeepScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->keepScreenOn()V

    goto :goto_0

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->cancelScreenOn()V

    :goto_0
    return-void
.end method
