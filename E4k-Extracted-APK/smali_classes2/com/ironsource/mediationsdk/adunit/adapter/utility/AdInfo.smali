.class public Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
.super Ljava/lang/Object;
.source "AdInfo.java"


# instance fields
.field private final mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .locals 0
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    return-void
.end method


# virtual methods
.method public getAb()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAb()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAdNetwork()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdNetwork()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdNetwork()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAdUnit()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdUnit()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdUnit()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAuctionId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAuctionId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getEncryptedCPM()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getEncryptedCPM()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getEncryptedCPM()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLifetimeRevenue()Ljava/lang/Double;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getLifetimeRevenue()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getLifetimeRevenue()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getPrecision()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getPrecision()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRevenue()Ljava/lang/Double;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getRevenue()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getRevenue()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getSegmentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getSegmentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "auctionId"

    .line 141
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adUnit"

    .line 142
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getAdUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    .line 143
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ab"

    .line 144
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getAb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "segmentName"

    .line 145
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getSegmentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adNetwork"

    .line 146
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getAdNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "instanceName"

    .line 147
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "instanceId"

    .line 148
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "revenue"

    .line 149
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getRevenue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "precision"

    .line 150
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getPrecision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lifetimeRevenue"

    .line 151
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getLifetimeRevenue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "encryptedCPM"

    .line 152
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getEncryptedCPM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 155
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while parsing ad info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 157
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
