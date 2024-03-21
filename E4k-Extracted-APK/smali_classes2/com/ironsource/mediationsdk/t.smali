.class public final Lcom/ironsource/mediationsdk/t;
.super Lcom/ironsource/mediationsdk/y;

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;


# instance fields
.field private i:Lcom/ironsource/mediationsdk/sdk/c;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/sdk/c;ILcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 3

    new-instance v0, Lcom/ironsource/mediationsdk/model/a;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {v0, p3, v1, v2}, Lcom/ironsource/mediationsdk/model/a;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-direct {p0, v0, p6}, Lcom/ironsource/mediationsdk/y;-><init>(Lcom/ironsource/mediationsdk/model/a;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    iput-object p4, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    iput p5, p0, Lcom/ironsource/mediationsdk/t;->d:I

    iput-object p1, p0, Lcom/ironsource/mediationsdk/t;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/t;->l:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/mediationsdk/t;->m:Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/t;->c:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p2, p4, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initBannerForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/t;)J
    .locals 2

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/t;->j:J

    return-wide v0
.end method

.method static synthetic b(Lcom/ironsource/mediationsdk/t;)Lcom/ironsource/mediationsdk/sdk/c;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "destroyBanner() mAdapter == null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/y$a;->c:Lcom/ironsource/mediationsdk/y$a;

    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/y$a;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/t;->a(Lcom/ironsource/mediationsdk/y$a;Lcom/ironsource/mediationsdk/y$a;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/ironsource/mediationsdk/y$a;->b:Lcom/ironsource/mediationsdk/y$a;

    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/y$a;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/t;->a(Lcom/ironsource/mediationsdk/y$a;Lcom/ironsource/mediationsdk/y$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "cannot destroy banner not loaded"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/t;->h()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/t;->b:Lcom/ironsource/mediationsdk/model/a;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->destroyBanner(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadBanner state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/t;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ironsource/mediationsdk/y$a;

    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/y$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->c:Lcom/ironsource/mediationsdk/y$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->b:Lcom/ironsource/mediationsdk/y$a;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/t;->a([Lcom/ironsource/mediationsdk/y$a;Lcom/ironsource/mediationsdk/y$a;)Lcom/ironsource/mediationsdk/y$a;

    move-result-object v0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p2, :cond_1

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "loadBanner - serverData is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/ironsource/mediationsdk/t;->j:J

    sub-long v4, p1, p3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p1, 0x26a

    const-string p2, "serverData==null"

    invoke-direct {v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/mediationsdk/sdk/c;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/t;ZJ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v1, :cond_2

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "loadBanner - mAdapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/ironsource/mediationsdk/t;->j:J

    sub-long v4, p1, p3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p1, 0x263

    const-string p2, "adapter==null"

    invoke-direct {v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/mediationsdk/sdk/c;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/t;ZJ)V

    return-void

    :cond_2
    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/y$a;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/t;->j:J

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "start timer"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/mediationsdk/t$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/t$1;-><init>(Lcom/ironsource/mediationsdk/t;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/t;->a(Ljava/util/TimerTask;)V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/t;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/t;->f:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/ironsource/mediationsdk/t;->g:Ljava/util/List;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/t;->k:Ljava/lang/String;

    iget-object p5, p0, Lcom/ironsource/mediationsdk/t;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->m:Lorg/json/JSONObject;

    invoke-virtual {p3, p4, p5, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initBannerForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    iget-object p3, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/t;->m:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p4, p0, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadBannerBiddingForDemandOnly(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object p1, Lcom/ironsource/mediationsdk/y$a;->b:Lcom/ironsource/mediationsdk/y$a;

    if-ne v0, p1, :cond_4

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x26b

    const-string p3, "load already in progress"

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x26c

    const-string p3, "load while show"

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/ironsource/mediationsdk/t;->j:J

    sub-long v4, p1, p3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    const/4 v3, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/mediationsdk/sdk/c;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/t;ZJ)V

    return-void

    :cond_5
    :goto_2
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "loadBanner - bannerLayout is null or destroyed"

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-nez p1, :cond_6

    const-string p1, "banner is null"

    goto :goto_3

    :cond_6
    const-string p1, "banner is destroyed"

    :goto_3
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-wide p4, p0, Lcom/ironsource/mediationsdk/t;->j:J

    sub-long v4, p2, p4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x262

    invoke-direct {v1, p2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/mediationsdk/sdk/c;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/t;ZJ)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->b:Lcom/ironsource/mediationsdk/model/a;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isMultipleInstances()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->b:Lcom/ironsource/mediationsdk/model/a;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->b:Lcom/ironsource/mediationsdk/model/a;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "providerAdapterVersion"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "providerSDKVersion"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spId"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t;->b:Lcom/ironsource/mediationsdk/model/a;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "provider"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t;->b:Lcom/ironsource/mediationsdk/model/a;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getAdSourceNameForEvents()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isDemandOnly"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "programmatic"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "instanceType"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/t;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "auctionId"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/t;->f:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/t;->f:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "genericParams"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t;->f:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/t;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "dynamicDemandSource"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getProviderEventData "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/t;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final onBannerAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/c;->a(Lcom/ironsource/mediationsdk/t;)V

    :cond_0
    return-void
.end method

.method public final onBannerAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/c;->d(Lcom/ironsource/mediationsdk/t;)V

    :cond_0
    return-void
.end method

.method public final onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/y$a;->b:Lcom/ironsource/mediationsdk/y$a;

    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/y$a;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/t;->a(Lcom/ironsource/mediationsdk/y$a;Lcom/ironsource/mediationsdk/y$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/t;->h()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    const/16 v1, 0x25e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/t;->j:J

    sub-long v5, v0, v2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    move-object v2, p1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/ironsource/mediationsdk/sdk/c;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/t;ZJ)V

    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/y$a;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/t;->a(Lcom/ironsource/mediationsdk/y$a;)V

    :cond_2
    return-void
.end method

.method public final onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/y$a;->b:Lcom/ironsource/mediationsdk/y$a;

    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->c:Lcom/ironsource/mediationsdk/y$a;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/t;->a(Lcom/ironsource/mediationsdk/y$a;Lcom/ironsource/mediationsdk/y$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    invoke-interface {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/sdk/c;->a(Lcom/ironsource/mediationsdk/t;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/t;->h()V

    :cond_1
    return-void
.end method

.method public final onBannerAdScreenDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/c;->b(Lcom/ironsource/mediationsdk/t;)V

    :cond_0
    return-void
.end method

.method public final onBannerAdScreenPresented()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/c;->c(Lcom/ironsource/mediationsdk/t;)V

    :cond_0
    return-void
.end method

.method public final onBannerAdShown()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/c;->e(Lcom/ironsource/mediationsdk/t;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t;->i:Lcom/ironsource/mediationsdk/sdk/c;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/c;->c(Lcom/ironsource/mediationsdk/t;)V

    :cond_0
    return-void
.end method

.method public final onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public final onBannerInitSuccess()V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method
