.class public Lcom/ironsource/sdk/controller/NativeController;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lcom/ironsource/sdk/controller/IronSourceController;


# instance fields
.field private mFailedControllerReason:Ljava/lang/String;

.field private final mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/ironsource/sdk/controller/NativeController;->mFailedControllerReason:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/ironsource/sdk/controller/NativeController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    .line 25
    iput-object p1, p0, Lcom/ironsource/sdk/controller/NativeController;->mFailedControllerReason:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/NativeController;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ironsource/sdk/controller/NativeController;->mFailedControllerReason:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public enterBackground()V
    .locals 0

    return-void
.end method

.method public enterForeground()V
    .locals 0

    return-void
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 61
    new-instance p1, Lcom/ironsource/sdk/controller/NativeController$3;

    invoke-direct {p1, p0, p3}, Lcom/ironsource/sdk/controller/NativeController$3;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getType()Lcom/ironsource/sdk/data/ISNEnums$ControllerType;
    .locals 1

    .line 30
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerType;->Native:Lcom/ironsource/sdk/data/ISNEnums$ControllerType;

    return-object v0
.end method

.method public initBanner(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 162
    sget-object p1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {p3}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/sdk/controller/NativeController;->mFailedControllerReason:Ljava/lang/String;

    invoke-interface {p4, p1, p2, p3}, Lcom/ironsource/sdk/listeners/internals/DSBannerListener;->onAdProductInitFailed(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 97
    new-instance p1, Lcom/ironsource/sdk/controller/NativeController$6;

    invoke-direct {p1, p0, p4, p3}, Lcom/ironsource/sdk/controller/NativeController$6;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 0
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

    if-eqz p4, :cond_0

    .line 36
    new-instance p1, Lcom/ironsource/sdk/controller/NativeController$1;

    invoke-direct {p1, p0, p4}, Lcom/ironsource/sdk/controller/NativeController$1;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 73
    new-instance p1, Lcom/ironsource/sdk/controller/NativeController$4;

    invoke-direct {p1, p0, p4, p3}, Lcom/ironsource/sdk/controller/NativeController$4;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadBanner(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 181
    new-instance v0, Lcom/ironsource/sdk/controller/NativeController$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/sdk/controller/NativeController$12;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public loadBannerForBidding(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;)V
    .locals 0
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

    if-eqz p3, :cond_0

    .line 169
    new-instance p1, Lcom/ironsource/sdk/controller/NativeController$11;

    invoke-direct {p1, p0, p3, p2}, Lcom/ironsource/sdk/controller/NativeController$11;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSBannerListener;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public loadController()V
    .locals 0

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

    if-eqz p3, :cond_0

    .line 121
    new-instance p2, Lcom/ironsource/sdk/controller/NativeController$8;

    invoke-direct {p2, p0, p3, p1}, Lcom/ironsource/sdk/controller/NativeController$8;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public loadInterstitial(Ljava/lang/String;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 109
    new-instance v0, Lcom/ironsource/sdk/controller/NativeController$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/sdk/controller/NativeController$7;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public requestToDestroyBanner()V
    .locals 0

    return-void
.end method

.method public restoreSavedState()V
    .locals 0

    return-void
.end method

.method runOnCallbacksThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/ironsource/sdk/controller/NativeController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/ironsource/sdk/controller/NativeController;->mThreadManager:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
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

    if-eqz p3, :cond_0

    .line 145
    new-instance p2, Lcom/ironsource/sdk/controller/NativeController$10;

    invoke-direct {p2, p0, p3, p1}, Lcom/ironsource/sdk/controller/NativeController$10;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;Lcom/ironsource/sdk/data/DemandSource;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 133
    new-instance v0, Lcom/ironsource/sdk/controller/NativeController$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/sdk/controller/NativeController$9;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showOfferWall(Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 0
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

    if-eqz p2, :cond_0

    .line 48
    new-instance p1, Lcom/ironsource/sdk/controller/NativeController$2;

    invoke-direct {p1, p0, p2}, Lcom/ironsource/sdk/controller/NativeController$2;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 85
    new-instance v0, Lcom/ironsource/sdk/controller/NativeController$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/sdk/controller/NativeController$5;-><init>(Lcom/ironsource/sdk/controller/NativeController;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/NativeController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public updateConsentInfo(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
