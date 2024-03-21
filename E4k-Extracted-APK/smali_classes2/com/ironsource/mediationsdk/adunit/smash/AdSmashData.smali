.class public Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;
.super Ljava/lang/Object;
.source "AdSmashData.java"


# instance fields
.field private mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionId:Ljava/lang/String;

.field private mAuctionTrial:I

.field private mGenericParams:Lorg/json/JSONObject;

.field private mLoadTimeoutInSeconds:I

.field private mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field private mSessionDepth:I

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 22
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mUserId:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mSessionDepth:I

    .line 24
    iput-object p4, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mGenericParams:Lorg/json/JSONObject;

    .line 25
    iput-object p5, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mAuctionId:Ljava/lang/String;

    .line 26
    iput p6, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mAuctionTrial:I

    .line 27
    iput-object p7, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mAuctionFallback:Ljava/lang/String;

    .line 28
    iput-object p8, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 29
    iput p9, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mLoadTimeoutInSeconds:I

    return-void
.end method


# virtual methods
.method public getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object v0
.end method

.method public getAuctionFallback()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mAuctionFallback:Ljava/lang/String;

    return-object v0
.end method

.method public getAuctionId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mAuctionId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuctionTrial()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mAuctionTrial:I

    return v0
.end method

.method public getGenericParams()Lorg/json/JSONObject;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mGenericParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLoadTimeoutInSeconds()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mLoadTimeoutInSeconds:I

    return v0
.end method

.method public getProviderSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mProviderSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v0
.end method

.method public getSessionDepth()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mSessionDepth:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/smash/AdSmashData;->mUserId:Ljava/lang/String;

    return-object v0
.end method
