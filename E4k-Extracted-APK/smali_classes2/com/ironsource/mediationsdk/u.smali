.class final Lcom/ironsource/mediationsdk/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/d;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/v;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ironsource/mediationsdk/utils/c;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p2, Lcom/ironsource/mediationsdk/model/h;->i:Lcom/ironsource/mediationsdk/utils/c;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/utils/c;

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
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/u;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->a()Lcom/ironsource/mediationsdk/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/d;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v8, Lcom/ironsource/mediationsdk/v;

    iget v6, p2, Lcom/ironsource/mediationsdk/model/h;->e:I

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/mediationsdk/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/sdk/d;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/u;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method static a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/v;->c()Ljava/util/Map;

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

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IS sendProviderEvent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

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
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "provider"

    const-string v1, "Mediation"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isDemandOnly"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "spId"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/ironsource/mediationsdk/a/c;

    const/16 v0, 0x9c4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p1, v0, v1}, Lcom/ironsource/mediationsdk/a/c;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/a/d;->d()Lcom/ironsource/mediationsdk/a/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/a/d;->b(Lcom/ironsource/mediationsdk/a/c;)V

    return-void
.end method

.method private static a(Lcom/ironsource/mediationsdk/v;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DemandOnlyIsManager "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/v;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DemandOnlyIsManager "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method a(ILcom/ironsource/mediationsdk/v;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/v;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdShowFailed error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/u;->a(Lcom/ironsource/mediationsdk/v;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, v0, v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    const/16 v0, 0x89b

    invoke-static {v0, p2, v1}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/v;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/mediationsdk/C;->b(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/v;J)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInterstitialAdLoadFailed error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/u;->a(Lcom/ironsource/mediationsdk/v;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x486

    if-ne v0, v4, :cond_0

    const/16 v0, 0x8a5

    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v5, v4, v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v3, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v3, v1

    aput-object v3, v4, v1

    :goto_0
    invoke-static {v0, p2, v4}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x898

    const/4 v4, 0x3

    new-array v4, v4, [[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v5, v4, v2

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v5, v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v5, v4, v1

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "duration"

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v5, v1

    aput-object v5, v4, v3

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object p3

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/v;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/ironsource/mediationsdk/C;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/v;)V
    .locals 10

    const-string v0, "onInterstitialAdOpened"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/u;->a(Lcom/ironsource/mediationsdk/v;Ljava/lang/String;)V

    const/16 v0, 0x7d5

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/v;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/ironsource/mediationsdk/C;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/ironsource/mediationsdk/C$3;

    invoke-direct {v3, v0, v1}, Lcom/ironsource/mediationsdk/C$3;-><init>(Lcom/ironsource/mediationsdk/C;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/v;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ironsource/mediationsdk/v;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/mediationsdk/f;->a()Lcom/ironsource/mediationsdk/f;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/v;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/v;->e()I

    move-result v4

    iget-object v5, p1, Lcom/ironsource/mediationsdk/v;->h:Ljava/lang/String;

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    invoke-static/range {v2 .. v9}, Lcom/ironsource/mediationsdk/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/f;->a()Lcom/ironsource/mediationsdk/f;

    const-string v2, "onInterstitialAdOpened"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/v;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/ironsource/mediationsdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/v;J)V
    .locals 5

    const-string v0, "onInterstitialAdReady"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/u;->a(Lcom/ironsource/mediationsdk/v;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "duration"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v0

    aput-object v2, v1, v4

    const/16 p2, 0x7d3

    invoke-static {p2, p1, v1}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/v;->f()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p2, Lcom/ironsource/mediationsdk/C;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;

    if-eqz p3, :cond_0

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/ironsource/mediationsdk/C$1;

    invoke-direct {v0, p2, p1}, Lcom/ironsource/mediationsdk/C$1;-><init>(Lcom/ironsource/mediationsdk/C;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p2, 0x9c4

    invoke-static {p2, p1}, Lcom/ironsource/mediationsdk/u;->a(ILjava/lang/String;)V

    const-string p2, "Interstitial"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNonExistentInstanceError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/C;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/v;

    const/16 v1, 0x7d2

    const/16 v2, 0x898

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/v;->i()Z

    move-result p3

    if-nez p3, :cond_1

    const-string p2, "loadInterstitialWithAdm in IAB flow must be called by bidder instances"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ironsource/mediationsdk/u;->a(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/C;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/f;->a()Lcom/ironsource/mediationsdk/f;

    invoke-static {p2}, Lcom/ironsource/mediationsdk/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {}, Lcom/ironsource/mediationsdk/f;->a()Lcom/ironsource/mediationsdk/f;

    invoke-static {p2}, Lcom/ironsource/mediationsdk/f;->a(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/f$a;

    move-result-object p2

    invoke-static {}, Lcom/ironsource/mediationsdk/f;->a()Lcom/ironsource/mediationsdk/f;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/v;->d()Ljava/lang/String;

    move-result-object p3

    iget-object v4, p2, Lcom/ironsource/mediationsdk/f$a;->b:Ljava/util/List;

    invoke-static {p3, v4}, Lcom/ironsource/mediationsdk/f;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/mediationsdk/server/b;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/server/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/v;->a(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/ironsource/mediationsdk/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/v;->b(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/ironsource/mediationsdk/f$a;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/v;->a(Lorg/json/JSONObject;)V

    invoke-static {v1, v0, v3}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/server/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/ironsource/mediationsdk/f$a;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/ironsource/mediationsdk/f$a;->d:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/server/b;->d()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/ironsource/mediationsdk/v;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const-string p2, "loadInterstitialWithAdm invalid enriched adm"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ironsource/mediationsdk/u;->a(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/v;->i()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {v1, v0, v3}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    const-string p2, ""

    const-string p3, ""

    invoke-virtual {v0, p2, p3, v3, v3}, Lcom/ironsource/mediationsdk/v;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    const-string p2, "loadInterstitialWithAdm in non IAB flow must be called by non bidder instances"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ironsource/mediationsdk/u;->a(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/C;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    const-string p2, "loadInterstitialWithAdm exception"

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ironsource/mediationsdk/u;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/C;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_2
    return-void
.end method

.method public final b(Lcom/ironsource/mediationsdk/v;)V
    .locals 7

    const-string v0, "onInterstitialAdClosed"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/u;->a(Lcom/ironsource/mediationsdk/v;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/o;->a()Lcom/ironsource/mediationsdk/utils/o;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/o;->b(I)I

    move-result v0

    const/4 v2, 0x1

    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "sessionDepth"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object v4, v3, v6

    const/16 v0, 0x89c

    invoke-static {v0, p1, v3}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/o;->a()Lcom/ironsource/mediationsdk/utils/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/o;->a(I)V

    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/v;->f()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/ironsource/mediationsdk/C;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ironsource/mediationsdk/C$4;

    invoke-direct {v2, v0, p1}, Lcom/ironsource/mediationsdk/C$4;-><init>(Lcom/ironsource/mediationsdk/C;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(Lcom/ironsource/mediationsdk/v;)V
    .locals 3

    const-string v0, "onInterstitialAdClicked"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/u;->a(Lcom/ironsource/mediationsdk/v;Ljava/lang/String;)V

    const/16 v0, 0x7d6

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/C;->a()Lcom/ironsource/mediationsdk/C;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/v;->f()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lcom/ironsource/mediationsdk/C;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ironsource/mediationsdk/C$6;

    invoke-direct {v2, v0, p1}, Lcom/ironsource/mediationsdk/C$6;-><init>(Lcom/ironsource/mediationsdk/C;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final d(Lcom/ironsource/mediationsdk/v;)V
    .locals 2

    const/16 v0, 0x8a2

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/u;->a(ILcom/ironsource/mediationsdk/v;[[Ljava/lang/Object;)V

    const-string v0, "onInterstitialAdVisible"

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/u;->a(Lcom/ironsource/mediationsdk/v;Ljava/lang/String;)V

    return-void
.end method
