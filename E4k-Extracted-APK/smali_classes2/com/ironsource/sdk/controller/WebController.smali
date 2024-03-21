.class public Lcom/ironsource/sdk/controller/WebController;
.super Landroid/webkit/WebView;
.source "WebController.java"

# interfaces
.implements Lcom/ironsource/sdk/controller/IronSourceController;
.implements Lcom/ironsource/sdk/precache/OnPreCacheCompletion;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;,
        Lcom/ironsource/sdk/controller/WebController$State;,
        Lcom/ironsource/sdk/controller/WebController$Result;,
        Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;,
        Lcom/ironsource/sdk/controller/WebController$NativeAPI;,
        Lcom/ironsource/sdk/controller/WebController$FrameBustWebViewClient;,
        Lcom/ironsource/sdk/controller/WebController$ChromeClient;,
        Lcom/ironsource/sdk/controller/WebController$ViewClient;,
        Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;
    }
.end annotation


# static fields
.field private static final BLANK_PAGE:Ljava/lang/String; = "about:blank"

.field public static EXTERNAL_URL:Ljava/lang/String; = "external_url"

.field public static IS_STORE:Ljava/lang/String; = "is_store"

.field private static JSON_KEY_FAIL:Ljava/lang/String; = "fail"

.field private static JSON_KEY_SUCCESS:Ljava/lang/String; = "success"

.field public static SECONDARY_WEB_VIEW:Ljava/lang/String; = "secondary_web_view"

.field public static mDebugMode:I


# instance fields
.field private final GENERIC_MESSAGE:Ljava/lang/String;

.field private PUB_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private isKitkatAndAbove:Ljava/lang/Boolean;

.field private isRemoveCloseEventHandler:Z

.field private mAdViewsJsAdapter:Lcom/ironsource/sdk/controller/AdViewsJSAdapter;

.field private mApplicationKey:Ljava/lang/String;

.field private mCacheDirectory:Ljava/lang/String;

.field private mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

.field private mCloseEventTimer:Landroid/os/CountDownTimer;

.field private mConnectivityAdapter:Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

.field mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

.field private mControllerHtmlFile:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

.field private mControllerLayout:Landroid/widget/FrameLayout;

.field private mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

.field private mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

.field private mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

.field private mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

.field private mDeviceDataJsAdapter:Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;

.field private mDisplayedViewInfo:Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;

.field private mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

.field private mFileSystemJSAdapter:Lcom/ironsource/sdk/controller/FileSystemJSAdapter;

.field private mHiddenForceCloseHeight:I

.field private mHiddenForceCloseLocation:Ljava/lang/String;

.field private mHiddenForceCloseWidth:I

.field private mIsImmersive:Z

.field private mIsWebControllerReady:Z

.field public mLoadControllerTimer:Landroid/os/CountDownTimer;

.field private mOWExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOmidJsAdapter:Lcom/ironsource/sdk/controller/OMIDJSAdapter;

.field private mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

.field private mOrientationState:Ljava/lang/String;

.field private mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

.field private mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

.field private mSavedStateLocker:Ljava/lang/Object;

.field private mState:Lcom/ironsource/sdk/controller/WebController$State;

.field private final mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

.field private mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;

.field private mUserId:Ljava/lang/String;

.field private mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

.field private mWebChromeClient:Lcom/ironsource/sdk/controller/WebController$ChromeClient;

.field private mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/sdk/controller/DemandSourceManager;Lcom/ironsource/sdk/controller/ContextProvider;Lcom/ironsource/sdk/controller/ControllerEventListener;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)V
    .locals 3

    .line 201
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 107
    const-class v0, Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v0, "IronSource"

    .line 108
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->PUB_TAG:Ljava/lang/String;

    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 112
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->GENERIC_MESSAGE:Ljava/lang/String;

    const/16 v0, 0x32

    .line 141
    iput v0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseWidth:I

    .line 142
    iput v0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseHeight:I

    const-string v0, "top-right"

    .line 143
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseLocation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;

    .line 171
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedStateLocker:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 173
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/WebController;->mIsImmersive:Z

    .line 202
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v2, "C\'tor"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController;->mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

    .line 205
    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;

    .line 206
    iput-object p5, p0, Lcom/ironsource/sdk/controller/WebController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    .line 207
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getNetworkStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    .line 209
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->initLayout(Landroid/content/Context;)V

    .line 211
    new-instance p2, Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-direct {p2}, Lcom/ironsource/sdk/data/AdUnitsState;-><init>()V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 213
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 214
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {p2, p0}, Lcom/ironsource/sdk/precache/DownloadManager;->setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/OnPreCacheCompletion;)V

    .line 216
    new-instance p2, Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    .line 217
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    .line 219
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object p5

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-direct {p2, p3, p4, p5, v1}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/precache/DownloadManager;)V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerHtmlFile:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    .line 223
    new-instance p2, Lcom/ironsource/sdk/controller/WebController$ChromeClient;

    invoke-direct {p2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$ChromeClient;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$1;)V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mWebChromeClient:Lcom/ironsource/sdk/controller/WebController$ChromeClient;

    .line 225
    new-instance p2, Lcom/ironsource/sdk/controller/WebController$ViewClient;

    invoke-direct {p2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$ViewClient;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$1;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/controller/WebController;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 226
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mWebChromeClient:Lcom/ironsource/sdk/controller/WebController$ChromeClient;

    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/controller/WebController;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 228
    invoke-static {p0}, Lcom/ironsource/sdk/utils/WebViewUtils;->setWebViewSettings(Landroid/webkit/WebView;)V

    .line 230
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->createSecuredCommunication()V

    .line 232
    invoke-virtual {p0, p0}, Lcom/ironsource/sdk/controller/WebController;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->createConnectivityAdapter(Landroid/content/Context;)Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

    .line 236
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 237
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/FeaturesManager;->getDebugMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->setDebugMode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/sdk/controller/WebController;)Landroid/os/CountDownTimer;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/ironsource/sdk/controller/WebController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerEventListener;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/sdk/controller/WebController;)Landroid/view/View;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/ironsource/sdk/controller/WebController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/ironsource/sdk/controller/WebController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ironsource/sdk/controller/WebController;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/ironsource/sdk/controller/WebController;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ironsource/sdk/controller/WebController;Landroid/content/Context;)[Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/controller/WebController;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/ironsource/sdk/controller/WebController;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z

    return p1
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_SUCCESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_FAIL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-direct/range {p0 .. p10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerHtmlFile;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerHtmlFile:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/precache/DownloadManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/TokenJSAdapter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/FileSystemJSAdapter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mFileSystemJSAdapter:Lcom/ironsource/sdk/controller/FileSystemJSAdapter;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ironsource/sdk/controller/WebController;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/WebController;->mIsImmersive:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/ironsource/sdk/controller/WebController;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/WebController;->mIsImmersive:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/WebController$State;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mState:Lcom/ironsource/sdk/controller/WebController$State;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/ironsource/sdk/controller/WebController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;)Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mDisplayedViewInfo:Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Lcom/ironsource/sdk/data/ISNEnums$ProductType;
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ironsource/sdk/controller/WebController;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->closeWebView()V

    return-void
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DemandSourceManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->PUB_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/internals/DSBannerListener;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->setWebviewBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/VideoEventsListener;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/OMIDJSAdapter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mOmidJsAdapter:Lcom/ironsource/sdk/controller/OMIDJSAdapter;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/PermissionsJSAdapter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mDeviceDataJsAdapter:Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/AdViewsJSAdapter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mAdViewsJsAdapter:Lcom/ironsource/sdk/controller/AdViewsJSAdapter;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/ironsource/sdk/controller/WebController;Lorg/json/JSONObject;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->setWebDebuggingEnabled(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->safeLoadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/WebController;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ironsource/sdk/controller/WebController;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseWidth:I

    return p0
.end method

.method static synthetic access$6000(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/Boolean;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$6002(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$602(Lcom/ironsource/sdk/controller/WebController;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseWidth:I

    return p1
.end method

.method static synthetic access$6100(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->evaluateJavascriptKitKat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/ironsource/sdk/controller/WebController;Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->startListenToNetworkChanges(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/ironsource/sdk/controller/WebController;Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->stopListenToNetworkChanges(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/sdk/controller/WebController;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseHeight:I

    return p0
.end method

.method static synthetic access$702(Lcom/ironsource/sdk/controller/WebController;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/ironsource/sdk/controller/WebController;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/WebController;->isRemoveCloseEventHandler:Z

    return p0
.end method

.method static synthetic access$902(Lcom/ironsource/sdk/controller/WebController;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/WebController;->isRemoveCloseEventHandler:Z

    return p1
.end method

.method private addGooglePlayInstalledData(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "gpi"

    .line 3601
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3602
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/environment/PackagesInstallationService;->isGooglePlayInstalled(Landroid/content/Context;)Z

    move-result v1

    .line 3600
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private closeWebView()V
    .locals 1

    .line 3277
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    if-eqz v0, :cond_0

    .line 3278
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onCloseRequested()V

    :cond_0
    return-void
.end method

.method private convertAbsolutePathToRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3053
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3054
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private createConnectivityAdapter(Landroid/content/Context;)Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;
    .locals 2

    .line 242
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$1;

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/ironsource/sdk/controller/WebController$1;-><init>(Lcom/ironsource/sdk/controller/WebController;Lorg/json/JSONObject;Landroid/content/Context;)V

    return-object v0
.end method

.method private createInitProductJSMethod(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/controller/WebController$Result;
    .locals 12

    .line 2934
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$Result;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/WebController$Result;-><init>()V

    .line 2937
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 2965
    :cond_0
    sget-object p2, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, p2, :cond_5

    const-string v2, "productType"

    const-string v3, "OfferWall"

    const-string v4, "applicationKey"

    .line 2966
    iget-object v5, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    const-string v6, "applicationUserId"

    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getUserCredits"

    const-string v1, "null"

    const-string v2, "onGetUserCreditsFail"

    .line 2970
    invoke-direct {p0, p2, p1, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getUserCredits"

    .line 2971
    iput-object p2, v0, Lcom/ironsource/sdk/controller/WebController$Result;->methodName:Ljava/lang/String;

    .line 2972
    iput-object p1, v0, Lcom/ironsource/sdk/controller/WebController$Result;->script:Ljava/lang/String;

    goto :goto_1

    .line 2938
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "applicationKey"

    .line 2939
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "applicationUserId"

    .line 2940
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 2943
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2944
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "loadStartTime"

    .line 2945
    sget-object v3, Lcom/ironsource/sdk/service/AdInstanceTimingService;->INSTANCE:Lcom/ironsource/sdk/service/AdInstanceTimingService;

    .line 2946
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/service/AdInstanceTimingService;->getTimingValueForInstance(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 2945
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v2, "demandSourceName"

    .line 2948
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "demandSourceId"

    .line 2949
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    :cond_3
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 2954
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2957
    :cond_4
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2959
    invoke-static {p1}, Lcom/ironsource/sdk/constants/Constants$JSMethods;->getInitMethodByProduct(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;

    move-result-object p1

    .line 2960
    iget-object v1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iget-object v2, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2962
    iget-object p1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iput-object p1, v0, Lcom/ironsource/sdk/controller/WebController$Result;->methodName:Ljava/lang/String;

    .line 2963
    iput-object p2, v0, Lcom/ironsource/sdk/controller/WebController$Result;->script:Ljava/lang/String;

    :cond_5
    :goto_1
    return-object v0
.end method

.method private createSecuredCommunication()V
    .locals 3

    .line 273
    invoke-static {}, Lcom/ironsource/sdk/controller/SecureMessagingService;->generateToken()Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/ironsource/sdk/controller/SecureMessagingService;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/SecureMessagingService;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->createControllerMessageHandler(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/ControllerMessageHandler;

    move-result-object v0

    const-string v2, "Android"

    .line 276
    invoke-virtual {p0, v0, v2}, Lcom/ironsource/sdk/controller/WebController;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->createSecureMessagingInterface(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/SecureMessagingInterface;

    move-result-object v0

    const-string v1, "GenerateTokenForMessaging"

    .line 281
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private createShowProductJSMethod(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 2980
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sessionDepth"

    .line 2981
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessionDepth"

    .line 2982
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "demandSourceName"

    .line 2984
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2985
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 2987
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v2, p1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2990
    invoke-virtual {v2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2991
    invoke-virtual {v2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2994
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "demandSourceName"

    .line 2995
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2997
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "demandSourceId"

    .line 2998
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3002
    :cond_2
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3004
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3007
    :cond_3
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 3008
    invoke-static {p1}, Lcom/ironsource/sdk/constants/Constants$JSMethods;->getShowMethodByProduct(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;

    move-result-object p1

    .line 3009
    iget-object v0, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iget-object v1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private evaluateJavascriptKitKat(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3196
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/WebController;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3345
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3346
    sget-object p1, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3337
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3338
    sget-object p1, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 3940
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3941
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 3947
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?parameters="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3948
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 3955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3956
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3957
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    .line 3964
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3965
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?parameters="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3966
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3967
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAdProductListenerByProductType(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .locals 1

    .line 2542
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 2543
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    return-object p1

    .line 2544
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_1

    .line 2545
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    return-object p1

    .line 2546
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_2

    .line 2547
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6

    .line 3610
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 3618
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    move-result-object v1

    .line 3619
    sget-object v5, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne v1, v5, :cond_0

    .line 3620
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    move-object v4, p2

    goto :goto_0

    .line 3622
    :cond_0
    iget-object v5, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v5, v1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3624
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v1

    const-string v4, "demandSourceName"

    .line 3625
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "demandSourceId"

    .line 3626
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    :cond_1
    :goto_0
    :try_start_0
    const-string p2, "productType"

    .line 3631
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3633
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3637
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3639
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3640
    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    move-object v0, p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 3643
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 p1, 0x0

    goto :goto_4

    :cond_3
    const/4 p1, 0x1

    .line 3651
    :goto_4
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    :try_start_2
    const-string p2, "applicationUserId"

    .line 3654
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 3655
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3653
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    .line 3658
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    .line 3665
    :goto_5
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    :try_start_3
    const-string p2, "applicationKey"

    .line 3668
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 3669
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3667
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception p2

    .line 3671
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :cond_5
    const/4 p1, 0x1

    :goto_6
    if-eqz v4, :cond_7

    .line 3678
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 3680
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3682
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "sdkWebViewCache"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3683
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/ironsource/sdk/controller/WebController;->setWebviewCache(Ljava/lang/String;)V

    .line 3687
    :cond_6
    :try_start_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception v1

    .line 3689
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    :cond_7
    const/4 p2, 0x2

    .line 3695
    new-array p2, p2, [Ljava/lang/Object;

    .line 3696
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    .line 3697
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v3

    return-object p2
.end method

.method private getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    .locals 9

    .line 3389
    invoke-static {p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    .line 3391
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "appOrientation"

    const-string v5, "none"

    .line 3396
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceOrientation"

    .line 3397
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->translateDeviceOrientation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3400
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOem()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "deviceOEM"

    .line 3402
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3406
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "deviceModel"

    .line 3408
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 3414
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 3415
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v5

    .line 3416
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 3418
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3420
    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v8, "add AID and LAT"

    invoke-static {v7, v8}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "isLimitAdTrackingEnabled"

    .line 3423
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceIds"

    .line 3427
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "["

    .line 3428
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AID"

    .line 3429
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    .line 3430
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3432
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3436
    :cond_2
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "deviceOs"

    .line 3438
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    .line 3444
    :goto_1
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "[^0-9/.]"

    const-string v7, ""

    .line 3446
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceOSVersion"

    .line 3447
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    .line 3452
    :goto_2
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "deviceOSVersionFull"

    .line 3454
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3458
    :cond_5
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceApiLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "deviceApiLevel"

    .line 3460
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    .line 3466
    :goto_3
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "SDKVersion"

    .line 3468
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3472
    :cond_7
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    const-string v5, "mobileCarrier"

    .line 3473
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3477
    :cond_8
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "none"

    .line 3478
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "connectionType"

    .line 3479
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    .line 3485
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v0, v5, :cond_a

    const-string v0, "hasVPN"

    .line 3487
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->hasVPN(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3491
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "deviceLanguage"

    .line 3493
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3497
    :cond_b
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3498
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "diskFreeSize"

    .line 3500
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3501
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3499
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_c
    const/4 v4, 0x1

    .line 3507
    :goto_5
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceWidth()I

    move-result v0

    .line 3508
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3509
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 3511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceScreenSize"

    .line 3512
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    .line 3513
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "width"

    .line 3514
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    .line 3515
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3517
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3518
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3517
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_d
    const/4 v4, 0x1

    .line 3524
    :goto_6
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceHeight()I

    move-result v0

    .line 3525
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceScreenSize"

    .line 3528
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    .line 3529
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "height"

    .line 3530
    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    .line 3531
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3533
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3534
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3533
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3536
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/environment/ApplicationContext;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "bundleId"

    .line 3538
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3541
    :cond_e
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceDensity()F

    move-result v0

    .line 3542
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 3543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "deviceScreenScale"

    .line 3544
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3547
    :cond_f
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isRootedDevice()Z

    move-result v0

    .line 3548
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 3549
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "unLocked"

    .line 3550
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3553
    :cond_10
    invoke-static {p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceVolume(Landroid/content/Context;)F

    move-result v0

    const-string v5, "deviceVolume"

    .line 3554
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    float-to-double v6, v0

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "batteryLevel"

    .line 3559
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getBatteryLevel(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mcc"

    .line 3561
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3562
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getNetworkMCC(Landroid/content/Context;)I

    move-result v5

    .line 3561
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mnc"

    .line 3563
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3564
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getNetworkMNC(Landroid/content/Context;)I

    move-result v5

    .line 3563
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "phoneType"

    .line 3566
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3567
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getPhoneType(Landroid/content/Context;)I

    move-result v5

    .line 3566
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "simOperator"

    .line 3568
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3569
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3568
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lastUpdateTime"

    .line 3571
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3572
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 3571
    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "firstInstallTime"

    .line 3573
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3574
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 3573
    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "appVersion"

    .line 3575
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3576
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3575
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3578
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3579
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "installerPackageName"

    .line 3580
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3581
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3580
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3583
    :cond_11
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->addGooglePlayInstalledData(Lorg/json/JSONObject;)V

    const-string v0, "screenBrightness"

    .line 3585
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getScreenBrightness(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    const/4 v4, 0x0

    .line 3588
    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_8
    const/4 p1, 0x2

    .line 3592
    new-array p1, p1, [Ljava/lang/Object;

    .line 3593
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 3594
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    return-object p1
.end method

.method private getExtraParamsByProduct(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/ISNEnums$ProductType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    if-ne p1, v0, :cond_0

    .line 189
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRequestParameters(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .line 3206
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    .line 3208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3210
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    .line 3211
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SDKVersion"

    .line 3212
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 3213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    .line 3215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3218
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v0

    .line 3219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "deviceOs"

    .line 3220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 3221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3222
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3225
    :cond_1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v0

    .line 3226
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3230
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 3231
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 3233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v0, "&"

    .line 3236
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "protocol"

    .line 3237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    .line 3238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    .line 3241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "domain"

    .line 3242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    .line 3243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3244
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3249
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "isSecured"

    const-string v3, "applicationKey"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 3254
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "&"

    .line 3256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "controllerConfig"

    .line 3257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    .line 3258
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3259
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3263
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    const-string p1, "&"

    .line 3267
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "debug"

    .line 3268
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 3269
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDebugMode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3273
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/ISNEnums$ProductType;
    .locals 2

    .line 2554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2558
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2559
    sget-object p1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    return-object p1

    .line 2560
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2561
    sget-object p1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    return-object p1

    .line 2562
    :cond_2
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2563
    sget-object p1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    return-object p1

    .line 2564
    :cond_3
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2565
    sget-object p1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    return-object p1

    :cond_4
    return-object v1
.end method

.method private getWebview()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method private handleLoadAd(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2772
    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2774
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->convertToMap()Ljava/util/Map;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 2772
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 2780
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportLoadInterstitial(Ljava/lang/String;Z)V

    .line 2782
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadInterstitial"

    const-string v0, "onLoadInterstitialSuccess"

    const-string v1, "onLoadInterstitialFail"

    .line 2783
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2784
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 4

    .line 436
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 441
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    .line 445
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 446
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 447
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 451
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 452
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 453
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 456
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V
    .locals 0

    .line 2694
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2699
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/ironsource/sdk/controller/WebController;->createInitProductJSMethod(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/controller/WebController$Result;

    move-result-object p1

    .line 2701
    iget-object p1, p1, Lcom/ironsource/sdk/controller/WebController$Result;->script:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "User id or Application key are missing"

    .line 2695
    invoke-interface {p5, p1, p3, p4}, Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;->handleInitProductFailed(Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    return-void
.end method

.method private injectJavascript(Ljava/lang/String;)V
    .locals 3

    .line 3129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "empty"

    .line 3135
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDebugMode()I

    move-result v1

    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/ISNEnums$DebugMode;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/ISNEnums$DebugMode;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    goto :goto_0

    .line 3139
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDebugMode()I

    move-result v1

    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$DebugMode;->MODE_1:Lcom/ironsource/sdk/data/ISNEnums$DebugMode;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/ISNEnums$DebugMode;->getValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 3140
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getDebugMode()I

    move-result v1

    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/ISNEnums$DebugMode;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/ISNEnums$DebugMode;->getValue()I

    move-result v2

    if-gt v1, v2, :cond_2

    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    .line 3150
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try{"

    .line 3152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}catch(e){"

    .line 3154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    .line 3156
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3159
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$11;

    invoke-direct {v0, p0, v1, p1}, Lcom/ironsource/sdk/controller/WebController$11;-><init>(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 3354
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3358
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3359
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3362
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3363
    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3366
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3367
    invoke-static {p6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3370
    :cond_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3371
    invoke-static {p8}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3374
    :cond_3
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3375
    invoke-virtual {v0, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3379
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3382
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3294
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3295
    sget-object v1, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3296
    sget-object v2, Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3302
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 3306
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3312
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3314
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3316
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errMsg"

    .line 3317
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    .line 3322
    :catch_0
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 3324
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "errCode"

    .line 3325
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, p2

    .line 3330
    :catch_1
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3331
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private safeLoadUrl(Ljava/lang/String;)V
    .locals 3

    .line 2608
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2611
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController::load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 467
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    return-void
.end method

.method private setWebDebuggingEnabled()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 475
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setWebDebuggingEnabled(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "inspectWebview"

    .line 2678
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2679
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->setWebDebuggingEnabled()V

    :cond_0
    return-void
.end method

.method private setWebviewBackground(Ljava/lang/String;)V
    .locals 2

    .line 2581
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "color"

    .line 2582
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "adViewId"

    .line 2583
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transparent"

    .line 2586
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2587
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2590
    invoke-static {}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->getInstance()Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->getAdView(Ljava/lang/String;)Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2592
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 2595
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setWebviewCache(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 3884
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3886
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 3889
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_0
    return-void
.end method

.method private shouldNotifyDeveloper(Ljava/lang/String;)Z
    .locals 4

    .line 503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 504
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v0, "Trying to trigger a listener - no product was found"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 508
    :cond_0
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    if-eqz v0, :cond_5

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 510
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 512
    :cond_2
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 514
    :cond_3
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 515
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 519
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method private startListenToNetworkChanges(Landroid/content/Context;)V
    .locals 1

    .line 3816
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

    if-nez v0, :cond_0

    return-void

    .line 3820
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;->startListenToNetworkChanges(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3822
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private stopListenToNetworkChanges(Landroid/content/Context;)V
    .locals 1

    .line 3828
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

    if-nez v0, :cond_0

    return-void

    .line 3832
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;->stopListenToNetworkChanges(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3834
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3753
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p2}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p2, "errMsg"

    .line 3754
    invoke-virtual {v0, p2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3756
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3757
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController$15;-><init>(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .locals 1

    .line 3013
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3014
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$10;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ironsource/sdk/controller/WebController$10;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAdViewsJSInterface(Lcom/ironsource/sdk/controller/AdViewsJSAdapter;)V
    .locals 1

    .line 321
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mAdViewsJsAdapter:Lcom/ironsource/sdk/controller/AdViewsJSAdapter;

    .line 322
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mAdViewsJsAdapter:Lcom/ironsource/sdk/controller/AdViewsJSAdapter;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getControllerDelegate()Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/AdViewsJSAdapter;->setCommunicationWithController(Lcom/ironsource/sdk/controller/WebViewMessagingMediator;)V

    return-void
.end method

.method public addDeviceDataJSInterface(Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mDeviceDataJsAdapter:Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;

    return-void
.end method

.method public addFileSystemJSInterface(Lcom/ironsource/sdk/controller/FileSystemJSAdapter;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mFileSystemJSAdapter:Lcom/ironsource/sdk/controller/FileSystemJSAdapter;

    return-void
.end method

.method public addOmidJSInterface(Lcom/ironsource/sdk/controller/OMIDJSAdapter;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mOmidJsAdapter:Lcom/ironsource/sdk/controller/OMIDJSAdapter;

    return-void
.end method

.method public addPermissionsJSInterface(Lcom/ironsource/sdk/controller/PermissionsJSAdapter;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    return-void
.end method

.method public addTokenJSInterface(Lcom/ironsource/sdk/controller/TokenJSAdapter;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;

    return-void
.end method

.method public assetCached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 3061
    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/WebController;->convertAbsolutePathToRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "file"

    const-string v3, "path"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 3062
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "assetCached"

    .line 3063
    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3064
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3066
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/sdk/controller/WebController;->assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 3072
    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/WebController;->convertAbsolutePathToRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "file"

    const-string v3, "path"

    const-string v5, "errMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v6, p3

    .line 3073
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assetCachedFailed"

    .line 3074
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3075
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method createControllerMessageHandler(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/ControllerMessageHandler;
    .locals 2

    .line 291
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    .line 292
    new-instance v1, Lcom/ironsource/sdk/controller/ControllerAdapter;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/ControllerAdapter;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V

    .line 293
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerMessageHandler;

    invoke-direct {v0, v1, p1}, Lcom/ironsource/sdk/controller/ControllerMessageHandler;-><init>(Lcom/ironsource/sdk/controller/ControllerAdapter;Lcom/ironsource/sdk/controller/SecureMessagingService;)V

    return-object v0
.end method

.method createSecureMessagingInterface(Lcom/ironsource/sdk/controller/SecureMessagingService;)Lcom/ironsource/sdk/controller/SecureMessagingInterface;
    .locals 1

    .line 297
    new-instance v0, Lcom/ironsource/sdk/controller/SecureMessagingInterface;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/controller/SecureMessagingInterface;-><init>(Lcom/ironsource/sdk/controller/SecureMessagingService;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 3922
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 3924
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    if-eqz v0, :cond_0

    .line 3925
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->release()V

    .line 3928
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

    if-eqz v0, :cond_1

    .line 3929
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;

    invoke-virtual {v0}, Lcom/ironsource/sdk/service/Connectivity/ConnectivityAdapter;->release()V

    .line 3932
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 3933
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    return-void
.end method

.method public engageEnd(Ljava/lang/String;)V
    .locals 12

    const-string v0, "forceClose"

    .line 3787
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3788
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->closeWebView()V

    :cond_0
    const-string v2, "action"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 3791
    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "engageEnd"

    .line 3792
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3793
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public enterBackground()V
    .locals 1

    const-string v0, "enterBackground"

    .line 3081
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3082
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public enterForeground()V
    .locals 1

    const-string v0, "enterForeground"

    .line 3086
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3087
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public failedToStartStoreActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 3119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "unknown url"

    :cond_0
    move-object v4, p2

    .line 3120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "activity failed to open with unspecified reason"

    :cond_1
    move-object v2, p1

    const-string v1, "errMsg"

    const-string v3, "url"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 3121
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "failedToStartStoreActivity"

    .line 3124
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public getControllerDelegate()Lcom/ironsource/sdk/controller/WebViewMessagingMediator;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$2;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/WebController$2;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mWebViewMessagingMediator:Lcom/ironsource/sdk/controller/WebViewMessagingMediator;

    return-object v0
.end method

.method public getCurrentActivityContext()Landroid/content/Context;
    .locals 1

    .line 3201
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mContextProvider:Lcom/ironsource/sdk/controller/ContextProvider;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ContextProvider;->getCurrentActivityContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDebugMode()I
    .locals 1

    .line 494
    sget v0, Lcom/ironsource/sdk/controller/WebController;->mDebugMode:I

    return v0
.end method

.method getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/precache/DownloadManager;->getInstance(Ljava/lang/String;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 3866
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 6

    .line 2856
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2857
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2859
    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 2861
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$8;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$8;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method public getOrientationState()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mOrientationState:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Lcom/ironsource/sdk/data/AdUnitsState;
    .locals 1

    .line 3971
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object v0
.end method

.method public getState()Lcom/ironsource/sdk/controller/WebController$State;
    .locals 1

    .line 3917
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mState:Lcom/ironsource/sdk/controller/WebController$State;

    return-object v0
.end method

.method public getType()Lcom/ironsource/sdk/data/ISNEnums$ControllerType;
    .locals 1

    .line 2817
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerType;->Web:Lcom/ironsource/sdk/data/ISNEnums$ControllerType;

    return-object v0
.end method

.method public handleSearchKeysURLs(Ljava/lang/String;)Z
    .locals 2

    .line 3894
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3896
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3898
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3899
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3900
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3906
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public handleWebViewCrash()V
    .locals 3

    .line 3979
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDisplayedViewInfo:Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;

    if-nez v0, :cond_0

    return-void

    .line 3983
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/WebController;->closeWebView()V

    .line 3986
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDisplayedViewInfo:Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;->getProductType()Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    move-result-object v0

    .line 3987
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mDisplayedViewInfo:Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;->getDemandSourceId()Ljava/lang/String;

    move-result-object v1

    .line 3988
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3989
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->notifyAdClose(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public hideCustomView()V
    .locals 1

    .line 3874
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mWebChromeClient:Lcom/ironsource/sdk/controller/WebController$ChromeClient;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController$ChromeClient;->onHideCustomView()V

    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .line 3870
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initBanner(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 6

    .line 2879
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2880
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2882
    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mDSBannerListener:Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    .line 2884
    sget-object v3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$9;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$9;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 6

    .line 2735
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2736
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2737
    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    .line 2740
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialAppKey(Ljava/lang/String;)V

    .line 2741
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialUserId(Ljava/lang/String;)V

    .line 2743
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$6;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$6;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 2827
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2828
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2829
    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    .line 2830
    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 2832
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferWallExtraParams(Ljava/util/Map;)V

    .line 2834
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 2836
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$7;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$7;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .locals 6

    .line 2709
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;

    .line 2710
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;

    .line 2711
    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    .line 2712
    iget-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p4, p1}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVAppKey(Ljava/lang/String;)V

    .line 2713
    iget-object p4, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p4, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVUserId(Ljava/lang/String;)V

    .line 2715
    sget-object v3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    new-instance v5, Lcom/ironsource/sdk/controller/WebController$5;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/WebController$5;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/WebController;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/controller/WebController$OnInitProductHandler;)V

    return-void
.end method

.method public interceptedUrlToStore()V
    .locals 1

    const-string v0, "interceptedUrlToStore"

    .line 3111
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3112
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 2

    .line 2809
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2810
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getAvailabilityState()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public load(I)V
    .locals 0

    .line 2603
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->loadNew(I)V

    return-void
.end method

.method public loadBanner(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 2

    .line 2913
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadBanner"

    const-string v0, "onLoadBannerSuccess"

    const-string v1, "onLoadBannerFail"

    .line 2914
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2915
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public loadBannerForBidding(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/internals/DSBannerListener;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x2

    .line 2895
    new-array p3, p3, [Ljava/util/Map;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    .line 2897
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->convertToMap()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    .line 2895
    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2901
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadBanner"

    const-string p3, "onLoadBannerSuccess"

    const-string v0, "onLoadBannerFail"

    .line 2902
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2903
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadController()V
    .locals 2

    .line 480
    new-instance v0, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v0}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    .line 481
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerHtmlFile:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->sendLoadControllerHtmlEvent(Lcom/ironsource/sdk/Events/ISNEventParams;)V

    .line 483
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerHtmlFile:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->prepareControllerFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 485
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->load(I)V

    :cond_0
    return-void
.end method

.method public loadInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;",
            ")V"
        }
    .end annotation

    .line 2768
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->handleLoadAd(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;)V

    return-void
.end method

.method public loadInterstitial(Ljava/lang/String;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 2

    .line 2757
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "demandSourceName"

    .line 2758
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2759
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 2761
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportLoadInterstitial(Ljava/lang/String;Z)V

    const-string p1, "loadInterstitial"

    const-string v0, "onLoadInterstitialSuccess"

    const-string v1, "onLoadInterstitialFail"

    .line 2763
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2764
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public loadNew(I)V
    .locals 11

    .line 2618
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerHtmlFile:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->wasControllerLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2619
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 2621
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->getRequestParameters(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 2623
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "sessionid"

    .line 2625
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "%s&sessionid=%s"

    const/4 v4, 0x2

    .line 2626
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "sessionid"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2630
    :cond_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerHtmlFile:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getControllerToLoad()Lcom/ironsource/sdk/fileSystem/ISNFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/fileSystem/ISNFile;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2634
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    new-instance v3, Lcom/ironsource/sdk/controller/WebController$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/ironsource/sdk/controller/WebController$3;-><init>(Lcom/ironsource/sdk/controller/WebController;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    .line 2645
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$4;

    const-wide/32 v6, 0xc350

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    move v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/ironsource/sdk/controller/WebController$4;-><init>(Lcom/ironsource/sdk/controller/WebController;JJI)V

    .line 2670
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController$4;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 2672
    :cond_1
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v0, "load(): Mobile Controller HTML Does not exist"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public nativeNavigationPressed(Ljava/lang/String;)V
    .locals 11

    const-string v1, "action"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 3100
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "nativeNavigationPressed"

    .line 3101
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3102
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method notifyAdClose(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)V
    .locals 1

    .line 3994
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController$18;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v1, "lifeCycleEvent"

    const-string v3, "productType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p1

    .line 330
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onNativeLifeCycleEvent"

    .line 336
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 3747
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileDownloadFail(Lcom/ironsource/sdk/fileSystem/ISNFile;Lcom/ironsource/sdk/data/ISNError;)V
    .locals 2

    .line 3724
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3725
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerHtmlFile:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    new-instance v0, Lcom/ironsource/sdk/controller/WebController$13;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/WebController$13;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$14;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/sdk/controller/WebController$14;-><init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/ISNError;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->handleDownloadFailed(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3739
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ironsource/sdk/data/ISNError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFileDownloadSuccess(Lcom/ironsource/sdk/fileSystem/ISNFile;)V
    .locals 2

    .line 3708
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3709
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mControllerHtmlFile:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    new-instance v0, Lcom/ironsource/sdk/controller/WebController$12;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/WebController$12;-><init>(Lcom/ironsource/sdk/controller/WebController;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->handleDownloadSuccess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3716
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/fileSystem/ISNFile;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->assetCached(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 4097
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    .line 4098
    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onBackButtonPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4102
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public pageFinished()V
    .locals 1

    const-string v0, "pageFinished"

    .line 3106
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3107
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 4

    .line 3840
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3842
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onPause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .locals 1

    .line 3797
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$16;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/WebController$16;-><init>(Lcom/ironsource/sdk/controller/WebController;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeVideoEventsListener()V
    .locals 1

    const/4 v0, 0x0

    .line 2576
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-void
.end method

.method public removeWebViewControllerChangeListener()V
    .locals 1

    const/4 v0, 0x0

    .line 3862
    iput-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    return-void
.end method

.method public requestToDestroyBanner()V
    .locals 4

    const-string v0, "destroyBanner"

    const-string v1, ""

    const-string v2, "onDestroyBannersSuccess"

    const-string v3, "onDestroyBannersFail"

    .line 2908
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2909
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public restoreSavedState()V
    .locals 1

    .line 3975
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V

    return-void
.end method

.method public restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V
    .locals 10

    .line 4009
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedStateLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 4011
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->shouldRestore()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z

    if-eqz v1, :cond_8

    .line 4013
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreState(state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedProduct()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 4021
    sget-object v3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 4022
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v3, "onRVAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 4024
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedDemandSourceId()Ljava/lang/String;

    move-result-object v3

    .line 4025
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4026
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4027
    invoke-interface {v4, v1, v3}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 4031
    :cond_0
    sget-object v3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 4032
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v3, "onInterstitialAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 4034
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedDemandSourceId()Ljava/lang/String;

    move-result-object v3

    .line 4035
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4036
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4037
    invoke-interface {v4, v1, v3}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 4041
    :cond_1
    sget-object v3, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 4042
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v3, "onOWAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v1, :cond_2

    .line 4044
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    .line 4048
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    const/4 v1, 0x0

    .line 4049
    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceId(Ljava/lang/String;)V

    goto :goto_1

    .line 4051
    :cond_3
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v2, "No ad was opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    :goto_1
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialAppKey()Ljava/lang/String;

    move-result-object v1

    .line 4059
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialUserId()Ljava/lang/String;

    move-result-object v2

    .line 4061
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v4, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Ljava/util/Collection;

    move-result-object v3

    .line 4062
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/sdk/data/DemandSource;

    .line 4063
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 4064
    iget-object v5, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initInterstitial(appKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", demandSource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    iget-object v5, p0, Lcom/ironsource/sdk/controller/WebController;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/ironsource/sdk/controller/WebController;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    goto :goto_2

    .line 4071
    :cond_5
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVAppKey()Ljava/lang/String;

    move-result-object v1

    .line 4072
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVUserId()Ljava/lang/String;

    move-result-object v2

    .line 4074
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v4, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/ISNEnums$ProductType;)Ljava/util/Collection;

    move-result-object v3

    .line 4075
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/sdk/data/DemandSource;

    .line 4076
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 4077
    invoke-virtual {v4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v6

    .line 4078
    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    const-string v8, "onRVNoMoreOffers()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-interface {v7, v6}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    .line 4080
    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initRewardedVideo(appKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", demandSource:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    iget-object v6, p0, Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-virtual {p0, v1, v2, v4, v6}, Lcom/ironsource/sdk/controller/WebController;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 4085
    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 4088
    :cond_8
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 4090
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :goto_4
    nop

    goto :goto_4
.end method

.method public resume()V
    .locals 4

    .line 3849
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/WebController;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3851
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onResume() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method runOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 4112
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    if-eqz v0, :cond_0

    .line 4113
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method runOnCallbacksThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 4118
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    if-eqz v0, :cond_0

    .line 4119
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 4106
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    if-eqz v0, :cond_0

    .line 4107
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 0

    .line 462
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public sendConnectionInfoChanged(Lorg/json/JSONObject;)V
    .locals 13

    .line 3779
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device connection info changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "connectionInfo"

    .line 3781
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "connectionInfoChanged"

    .line 3782
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3783
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public sendConnectionTypeChanged(Ljava/lang/String;)V
    .locals 13

    .line 3769
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device status changed, connection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3771
    invoke-static {p1}, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->setConnectionType(Ljava/lang/String;)V

    const-string v3, "connectionType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 3772
    invoke-direct/range {v2 .. v12}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "deviceStatusChanged"

    .line 3773
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3774
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 490
    sput p1, Lcom/ironsource/sdk/controller/WebController;->mDebugMode:I

    return-void
.end method

.method public setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V
    .locals 0

    .line 3858
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    return-void
.end method

.method public setOrientationState(Ljava/lang/String;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mOrientationState:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/ironsource/sdk/controller/WebController$State;)V
    .locals 0

    .line 3913
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mState:Lcom/ironsource/sdk/controller/WebController$State;

    return-void
.end method

.method public setVideoEventsListener(Lcom/ironsource/sdk/controller/VideoEventsListener;)V
    .locals 0

    .line 2572
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-void
.end method

.method public showInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/DemandSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x2

    .line 2798
    new-array p3, p3, [Ljava/util/Map;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    .line 2800
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->convertToMap()Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    .line 2798
    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 2804
    sget-object p2, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p2, p3}, Lcom/ironsource/sdk/controller/WebController;->createShowProductJSMethod(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 2805
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 0

    .line 2793
    sget-object p2, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->createShowProductJSMethod(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 2794
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public showOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .line 2846
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController;->mOWExtraParameters:Ljava/util/Map;

    const-string p1, "showOfferWall"

    const-string p2, "onShowOfferWallSuccess"

    const-string v0, "onShowOfferWallFail"

    .line 2847
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2848
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .locals 0

    .line 3038
    sget-object p2, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->createShowProductJSMethod(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 3039
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .locals 1

    .line 3806
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$17;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/WebController$17;-><init>(Lcom/ironsource/sdk/controller/WebController;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateConsentInfo(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "updateConsentInfo"

    if-eqz p1, :cond_0

    .line 2922
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2923
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public viewableChange(ZLjava/lang/String;)V
    .locals 11

    const-string v1, "webview"

    const-string v9, "isViewable"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move v10, p1

    .line 3091
    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "viewableChange"

    .line 3095
    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3096
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method
