.class public Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;
.super Ljava/lang/Object;
.source "AdManagerData.java"


# static fields
.field public static final DISABLED:I = -0x1


# instance fields
.field private mAdExpirationInMinutes:I

.field private mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field private mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

.field private mDelayLoadFailure:I

.field private mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

.field private mMaxSmashesToLoad:I

.field private mProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mSmashLoadTimeout:I

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/mediationsdk/utils/AuctionSettings;IIIILcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/utils/AuctionSettings;",
            "IIII",
            "Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 28
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mUserId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mProviderList:Ljava/util/List;

    .line 30
    iput-object p4, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 31
    iput p5, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mMaxSmashesToLoad:I

    .line 32
    iput p6, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mSmashLoadTimeout:I

    .line 33
    iput p7, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mDelayLoadFailure:I

    .line 34
    iput-object p9, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    .line 35
    iput p8, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mAdExpirationInMinutes:I

    return-void
.end method


# virtual methods
.method public getAdExpirationInMinutes()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mAdExpirationInMinutes:I

    return v0
.end method

.method public getAdUnit()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mAdUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object v0
.end method

.method public getAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    return-object v0
.end method

.method public getDelayLoadFailure()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mDelayLoadFailure:I

    return v0
.end method

.method public getLoadingData()Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mLoadingData:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;

    return-object v0
.end method

.method public getMaxSmashesToLoad()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mMaxSmashesToLoad:I

    return v0
.end method

.method public getProviderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mProviderList:Ljava/util/List;

    return-object v0
.end method

.method public getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 52
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSmashLoadTimeout()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mSmashLoadTimeout:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isAuctionEnabled()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdManagerData;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
