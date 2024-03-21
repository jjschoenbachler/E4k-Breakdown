.class public Lcom/ironsource/mediationsdk/BannerUtils;
.super Ljava/lang/Object;
.source "BannerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/BannerUtils$CreateCandidatesListener;,
        Lcom/ironsource/mediationsdk/BannerUtils$VerifyBannerListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAuctionCandidates(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/ironsource/mediationsdk/BannerUtils$CreateCandidatesListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/ProgBannerSmash;",
            ">;",
            "Lcom/ironsource/mediationsdk/BannerUtils$CreateCandidatesListener;",
            ")V"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 91
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/ProgBannerSmash;

    .line 92
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->isBidder()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getBiddingData()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const v3, 0x14461

    const/4 v4, 0x1

    .line 98
    new-array v5, v4, [[Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "reason"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "Missing bidding data"

    aput-object v7, v6, v4

    aput-object v6, v5, v8

    invoke-virtual {p1, v3, v5}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->isBidder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgBannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 107
    :cond_3
    invoke-interface {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/BannerUtils$CreateCandidatesListener;->onFinish(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static getTimeToWaitBeforeFirstAuction(JJ)J
    .locals 2

    .line 76
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long/2addr p2, v0

    return-wide p2
.end method

.method static isBannerLayoutReady(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static verifyDestroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/BannerUtils$VerifyBannerListener;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/BannerUtils$VerifyBannerListener;->success()V

    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "can\'t destroy banner - %s"

    const/4 v1, 0x1

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p0, :cond_2

    const-string p0, "banner is null"

    goto :goto_1

    :cond_2
    const-string p0, "banner is destroyed"

    :goto_1
    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-interface {p1, p0}, Lcom/ironsource/mediationsdk/BannerUtils$VerifyBannerListener;->failed(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static verifyLoadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/BannerPlacement;Lcom/ironsource/mediationsdk/BannerUtils$VerifyBannerListener;)V
    .locals 4

    .line 40
    invoke-static {p0}, Lcom/ironsource/mediationsdk/BannerUtils;->isBannerLayoutReady(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "can\'t load banner - %s"

    .line 41
    new-array v3, v2, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "banner is null"

    goto :goto_0

    :cond_0
    const-string p0, "banner is destroyed"

    :goto_0
    aput-object p0, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string p0, "can\'t load banner - %s"

    .line 46
    new-array v0, v2, [Ljava/lang/Object;

    if-nez p1, :cond_3

    const-string p1, "placement is null"

    goto :goto_2

    :cond_3
    const-string p1, "placement name is empty"

    :goto_2
    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 50
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 51
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 53
    invoke-interface {p2, p0}, Lcom/ironsource/mediationsdk/BannerUtils$VerifyBannerListener;->failed(Ljava/lang/String;)V

    goto :goto_3

    .line 57
    :cond_5
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/BannerUtils$VerifyBannerListener;->success()V

    :goto_3
    return-void
.end method
