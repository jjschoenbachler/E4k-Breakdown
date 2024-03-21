.class public Lcom/ironsource/mediationsdk/model/AdapterConfig;
.super Ljava/lang/Object;
.source "AdapterConfig.java"


# instance fields
.field private mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field private mAdUnitSettings:Lorg/json/JSONObject;

.field private mInstanceType:I

.field private mIsBidder:Z

.field private mMaxAdsPerSession:I

.field private mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 19
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mAdUnitSettings:Lorg/json/JSONObject;

    const-string p1, "instanceType"

    .line 20
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mInstanceType:I

    .line 21
    iget p1, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mInstanceType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mIsBidder:Z

    const-string p1, "maxAdsPerSession"

    const/16 v0, 0x63

    .line 22
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mMaxAdsPerSession:I

    .line 23
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-void
.end method


# virtual methods
.method public getAdSourceNameForEvents()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getAdSourceNameForEvents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object v0
.end method

.method public getAdUnitSettings()Lorg/json/JSONObject;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mAdUnitSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInstanceType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mInstanceType:I

    return v0
.end method

.method public getMaxAdsPerSession()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mMaxAdsPerSession:I

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderNameForReflection()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v0
.end method

.method public getSubProviderId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBidder()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/AdapterConfig;->mIsBidder:Z

    return v0
.end method
