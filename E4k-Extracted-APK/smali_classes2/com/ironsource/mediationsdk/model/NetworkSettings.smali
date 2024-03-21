.class public Lcom/ironsource/mediationsdk/model/NetworkSettings;
.super Ljava/lang/Object;
.source "NetworkSettings.java"


# static fields
.field private static final CUSTOM_NETWORK_ADAPTER_NAME_FIELD:Ljava/lang/String; = "customNetworkAdapterName"

.field private static final CUSTOM_NETWORK_FIELD:Ljava/lang/String; = "customNetwork"

.field private static final CUSTOM_NETWORK_PACKAGE_FIELD:Ljava/lang/String; = "customNetworkPackage"


# instance fields
.field private mAdSourceNameForEvents:Ljava/lang/String;

.field private mApplicationSettings:Lorg/json/JSONObject;

.field private mBannerSettings:Lorg/json/JSONObject;

.field private mInterstitialSettings:Lorg/json/JSONObject;

.field private mIsMultipleInstances:Z

.field private mProviderBNPriority:I

.field private mProviderDefaultInstance:Ljava/lang/String;

.field private mProviderISPriority:I

.field private mProviderInstanceName:Ljava/lang/String;

.field private mProviderName:Ljava/lang/String;

.field private mProviderRVPriority:I

.field private mProviderTypeForReflection:Ljava/lang/String;

.field private mRewardedVideoSettings:Lorg/json/JSONObject;

.field private mSubProviderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderInstanceName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderTypeForReflection:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mBannerSettings:Lorg/json/JSONObject;

    .line 74
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getApplicationSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    .line 75
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoPriority()I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderRVPriority:I

    .line 76
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialPriority()I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderISPriority:I

    .line 77
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerPriority()I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderBNPriority:I

    .line 78
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderDefaultInstance:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderInstanceName:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderTypeForReflection:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderDefaultInstance:Ljava/lang/String;

    .line 43
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 44
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 45
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mBannerSettings:Lorg/json/JSONObject;

    .line 46
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderRVPriority:I

    .line 48
    iput p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderISPriority:I

    .line 49
    iput p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderBNPriority:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderName:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderInstanceName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderTypeForReflection:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderDefaultInstance:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 58
    iput-object p6, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 59
    iput-object p7, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mBannerSettings:Lorg/json/JSONObject;

    .line 60
    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderRVPriority:I

    .line 62
    iput p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderISPriority:I

    .line 63
    iput p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderBNPriority:I

    return-void
.end method


# virtual methods
.method public getAdSourceNameForEvents()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mAdSourceNameForEvents:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationSettings()Lorg/json/JSONObject;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getBannerPriority()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderBNPriority:I

    return v0
.end method

.method public getBannerSettings()Lorg/json/JSONObject;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mBannerSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCustomNetwork()Ljava/lang/String;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    const-string v1, "customNetwork"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCustomNetworkAdapterName(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 217
    iget-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    const-string v0, "customNetworkAdapterName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 219
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 220
    iget-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    const-string v0, "customNetworkAdapterName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 222
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 223
    iget-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    const-string v0, "customNetworkAdapterName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 225
    :cond_2
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mBannerSettings:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    .line 226
    iget-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mBannerSettings:Lorg/json/JSONObject;

    const-string v0, "customNetworkAdapterName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCustomNetworkPackage()Ljava/lang/String;
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    const-string v1, "customNetworkPackage"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getInstanceType(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
    .locals 1

    .line 257
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "instanceType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 260
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "instanceType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 263
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "instanceType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getInterstitialPriority()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderISPriority:I

    return v0
.end method

.method public getInterstitialSettings()Lorg/json/JSONObject;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
    .locals 2

    .line 272
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/16 v1, 0x63

    if-ne p1, v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "maxAdsPerSession"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 275
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "maxAdsPerSession"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 278
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v0, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "maxAdsPerSession"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public getProviderDefaultInstance()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderDefaultInstance:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderInstanceName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderTypeForReflection()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderTypeForReflection:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoPriority()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderRVPriority:I

    return v0
.end method

.method public getRewardedVideoSettings()Lorg/json/JSONObject;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSubProviderId()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mSubProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public isBidder(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isCustomNetwork()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 246
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isCustomNetwork()Z
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getCustomNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isIronSource()Z
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupersonicAds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IronSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMultipleInstances()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mIsMultipleInstances:Z

    return v0
.end method

.method public setAdSourceNameForEvents(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mAdSourceNameForEvents:Ljava/lang/String;

    return-void
.end method

.method public setApplicationSettings(Lorg/json/JSONObject;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mApplicationSettings:Lorg/json/JSONObject;

    return-void
.end method

.method public setBannerPriority(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderBNPriority:I

    return-void
.end method

.method public setBannerSettings(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mBannerSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBannerSettings(Lorg/json/JSONObject;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mBannerSettings:Lorg/json/JSONObject;

    return-void
.end method

.method public setInterstitialPriority(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderISPriority:I

    return-void
.end method

.method public setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setInterstitialSettings(Lorg/json/JSONObject;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    return-void
.end method

.method public setIsMultipleInstances(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mIsMultipleInstances:Z

    return-void
.end method

.method public setRewardedVideoPriority(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mProviderRVPriority:I

    return-void
.end method

.method public setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRewardedVideoSettings(Lorg/json/JSONObject;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    return-void
.end method

.method public setSubProviderId(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/NetworkSettings;->mSubProviderId:Ljava/lang/String;

    return-void
.end method
