.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

.field final synthetic val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field final synthetic val$zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/applovin/sdk/AppLovinAdSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iput-object p5, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$zoneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$300(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 555
    new-instance v1, Lcom/applovin/adview/AppLovinAdView;

    invoke-static {}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    .line 558
    new-instance v2, Lcom/ironsource/adapters/applovin/AppLovinBannerListener;

    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iget-object v5, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$zoneId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/ironsource/adapters/applovin/AppLovinBannerListener;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 561
    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v3, v3, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v1, v1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSize:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$zoneId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$zoneId:Ljava/lang/String;

    const-string v1, "defaultZoneId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-static {}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$zoneId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    .line 570
    :cond_0
    invoke-static {}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-virtual {v2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loadBanner exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$6;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method
