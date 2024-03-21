.class public final Lcom/ironsource/mediationsdk/TokenRepositoryKt;
.super Ljava/lang/Object;
.source "TokenRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "getToken",
        "Lorg/json/JSONObject;",
        "tokenSettings",
        "Lcom/ironsource/mediationsdk/utils/TokenSettings;",
        "context",
        "Landroid/content/Context;",
        "mediationsdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final synthetic access$getToken(Lcom/ironsource/mediationsdk/utils/TokenSettings;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ironsource/mediationsdk/TokenRepositoryKt;->getToken(Lcom/ironsource/mediationsdk/utils/TokenSettings;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static final getToken(Lcom/ironsource/mediationsdk/utils/TokenSettings;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .line 23
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->isOneToken()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/ironsource/environment/token/TokenProvider;

    invoke-direct {p0}, Lcom/ironsource/environment/token/TokenProvider;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ironsource/environment/token/TokenProvider;->getToken(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->getNetworkSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    const-string v2, "it"

    .line 29
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getApplicationSettings()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 33
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getPlayerBiddingData()Lorg/json/JSONObject;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->getGenericParams()Lorg/json/JSONObject;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->getOptInKeyParamsTokenArray()Ljava/util/ArrayList;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 34
    invoke-virtual {v0, p1, v1, p0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->createToken(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method
