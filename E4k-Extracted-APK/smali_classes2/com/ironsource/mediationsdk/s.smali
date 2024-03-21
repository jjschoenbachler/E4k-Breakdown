.class public final Lcom/ironsource/mediationsdk/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/c;


# instance fields
.field a:Lcom/ironsource/mediationsdk/t;

.field b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

.field c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/t;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ironsource/mediationsdk/t;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/s;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupersonicAds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IronSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->a()Lcom/ironsource/mediationsdk/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/d;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v8, Lcom/ironsource/mediationsdk/t;

    iget-wide v1, p2, Lcom/ironsource/mediationsdk/model/e;->b:J

    long-to-int v6, v1

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/mediationsdk/t;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/sdk/c;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method static a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->c()Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_0
    new-instance p2, Lcom/ironsource/mediationsdk/a/c;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p0, v0}, Lcom/ironsource/mediationsdk/a/c;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/a/d;->d()Lcom/ironsource/mediationsdk/a/d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/a/d;->b(Lcom/ironsource/mediationsdk/a/c;)V

    return-void
.end method

.method static a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isDemandOnly"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spId"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/ironsource/mediationsdk/a/c;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p1, p0, v1}, Lcom/ironsource/mediationsdk/a/c;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/a/d;->d()Lcom/ironsource/mediationsdk/a/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/a/d;->b(Lcom/ironsource/mediationsdk/a/c;)V

    return-void
.end method


# virtual methods
.method a(ILcom/ironsource/mediationsdk/t;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "demand only banner manager : destroyBanner"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "destroyBanner banner cannot be null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "Banner is already destroyed and can\'t be used anymore. Please create a new one using IronSource.createBanner API"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p1, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->e:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->d:Landroid/app/Activity;

    iput-object v0, p1, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->b:Lcom/ironsource/mediationsdk/ISBannerSize;

    iput-object v0, p1, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->a:Landroid/view/View;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->removeBannerListener()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->d:Lcom/ironsource/mediationsdk/t;

    const/16 v1, 0xce9

    if-eqz p1, :cond_2

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "demand only banner manager : destroyBanner | mActiveSmash != null "

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->d:Lcom/ironsource/mediationsdk/t;

    invoke-static {v1, p1, v0}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->d:Lcom/ironsource/mediationsdk/t;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->a()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/s;->d:Lcom/ironsource/mediationsdk/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->a:Lcom/ironsource/mediationsdk/t;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "demand only banner manager : destroyBanner | mLoadingSmash != null "

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->a:Lcom/ironsource/mediationsdk/t;

    invoke-static {v1, p1, v0}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->a:Lcom/ironsource/mediationsdk/t;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->a()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/s;->a:Lcom/ironsource/mediationsdk/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/t;ZJ)V
    .locals 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " smash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    const/16 p3, 0xcea

    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "duration"

    aput-object v4, v2, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v2, v0

    aput-object v2, v3, v0

    :goto_0
    invoke-static {p3, p2, v3}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/16 p3, 0xce4

    const/4 v3, 0x3

    new-array v3, v3, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v1

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v0

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v4, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v4, v0

    aput-object v4, v3, v2

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/t;)V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xbc0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ironsource/mediationsdk/j;->a()Lcom/ironsource/mediationsdk/j;

    move-result-object p1

    iget-object v0, p1, Lcom/ironsource/mediationsdk/j;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/j$3;

    invoke-direct {v1, p1}, Lcom/ironsource/mediationsdk/j$3;-><init>(Lcom/ironsource/mediationsdk/j;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/t;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 10

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smash = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    sget-object v1, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v2, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$2;

    invoke-direct {v2, v0, p2, p3}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$2;-><init>(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/s;->d:Lcom/ironsource/mediationsdk/t;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/o;->a()Lcom/ironsource/mediationsdk/utils/o;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/utils/o;->b(I)I

    move-result p2

    const/16 v0, 0xbbd

    const/4 v1, 0x1

    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "sessionDepth"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v2, v6

    invoke-static {v0, p1, v2}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    const/16 v0, 0xc26

    new-array v2, v1, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sessionDepth"

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    aput-object v3, v2, v6

    invoke-static {v0, p1, v2}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/o;->a()Lcom/ironsource/mediationsdk/utils/o;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/utils/o;->a(I)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->i()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/ironsource/mediationsdk/t;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/mediationsdk/f;->a()Lcom/ironsource/mediationsdk/f;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->e()I

    move-result v4

    iget-object v5, p1, Lcom/ironsource/mediationsdk/t;->h:Ljava/lang/String;

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    invoke-static/range {v2 .. v9}, Lcom/ironsource/mediationsdk/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/ironsource/mediationsdk/f;->a()Lcom/ironsource/mediationsdk/f;

    const-string v0, "onBannerAdLoaded"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p3}, Lcom/ironsource/mediationsdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-static {}, Lcom/ironsource/mediationsdk/j;->a()Lcom/ironsource/mediationsdk/j;

    move-result-object p2

    iget-object p3, p2, Lcom/ironsource/mediationsdk/j;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz p3, :cond_3

    sget-object p3, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v0, Lcom/ironsource/mediationsdk/j$2;

    invoke-direct {v0, p2}, Lcom/ironsource/mediationsdk/j$2;-><init>(Lcom/ironsource/mediationsdk/j;)V

    invoke-virtual {p3, v0}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_3
    iput-boolean v1, p1, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->f:Z

    :cond_4
    return-void

    :cond_5
    :goto_1
    const/16 p2, 0xce4

    invoke-virtual {p0, p2, p1}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;)V

    return-void
.end method

.method public final b(Lcom/ironsource/mediationsdk/t;)V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xce7

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ironsource/mediationsdk/j;->a()Lcom/ironsource/mediationsdk/j;

    move-result-object p1

    iget-object v0, p1, Lcom/ironsource/mediationsdk/j;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/j$5;

    invoke-direct {v1, p1}, Lcom/ironsource/mediationsdk/j$5;-><init>(Lcom/ironsource/mediationsdk/j;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/ironsource/mediationsdk/t;)V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xce6

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ironsource/mediationsdk/j;->a()Lcom/ironsource/mediationsdk/j;

    move-result-object p1

    iget-object v0, p1, Lcom/ironsource/mediationsdk/j;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/j$4;

    invoke-direct {v1, p1}, Lcom/ironsource/mediationsdk/j$4;-><init>(Lcom/ironsource/mediationsdk/j;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/ironsource/mediationsdk/t;)V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xdb1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ironsource/mediationsdk/j;->a()Lcom/ironsource/mediationsdk/j;

    move-result-object p1

    iget-object v0, p1, Lcom/ironsource/mediationsdk/j;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/j$6;

    invoke-direct {v1, p1}, Lcom/ironsource/mediationsdk/j$6;-><init>(Lcom/ironsource/mediationsdk/j;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/ironsource/mediationsdk/t;)V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/16 v0, 0xbc1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/s;->a(ILcom/ironsource/mediationsdk/t;[[Ljava/lang/Object;)V

    const-string p1, ""

    const/16 v0, 0xc2f

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/s;->a(ILjava/lang/String;)V

    return-void
.end method
