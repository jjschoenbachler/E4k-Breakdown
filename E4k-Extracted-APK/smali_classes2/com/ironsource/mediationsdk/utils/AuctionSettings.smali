.class public Lcom/ironsource/mediationsdk/utils/AuctionSettings;
.super Ljava/lang/Object;
.source "AuctionSettings.java"


# instance fields
.field private disableLoadWhileShowSupportFor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuctionData:Ljava/lang/String;

.field private mAuctionRetryInterval:J

.field private mAuctionSavedHistoryLimit:I

.field private mAuctionTimeout:J

.field private mCompressAuctionRequest:Z

.field private mCompressAuctionResponse:Z

.field private mEncryptionVersion:I

.field private mIsAuctionOnShowStart:Z

.field private mIsLoadWhileShow:Z

.field private mIsProgrammatic:Z

.field private mMaxTrials:I

.field private mMinTimeToWaitBeforeFirstAuction:J

.field private mObjectPerWaterfall:Z

.field private mShouldSendBannerBURLFromImpression:Z

.field private mTimeToWaitBeforeAuction:J

.field private mTimeToWaitBeforeLoad:J

.field private mUrl:Ljava/lang/String;

.field private timeToDeleteOldWaterfallAfterAuction:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionData:Ljava/lang/String;

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsProgrammatic:Z

    const-wide/16 v1, 0x0

    .line 58
    iput-wide v1, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMinTimeToWaitBeforeFirstAuction:J

    .line 59
    iput-wide v1, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionRetryInterval:J

    .line 60
    iput-wide v1, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mTimeToWaitBeforeAuction:J

    .line 61
    iput-wide v1, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mTimeToWaitBeforeLoad:J

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsAuctionOnShowStart:Z

    .line 63
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsLoadWhileShow:Z

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->disableLoadWhileShowSupportFor:Ljava/util/ArrayList;

    .line 65
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->timeToDeleteOldWaterfallAfterAuction:I

    .line 66
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mCompressAuctionRequest:Z

    .line 67
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mCompressAuctionResponse:Z

    .line 68
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mEncryptionVersion:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJZJJJJZZIZZZIZ)V
    .locals 3

    move-object v0, p0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 74
    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionData:Ljava/lang/String;

    move-object v1, p2

    .line 75
    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mUrl:Ljava/lang/String;

    move v1, p3

    .line 76
    iput v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMaxTrials:I

    move v1, p4

    .line 77
    iput v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionSavedHistoryLimit:I

    move-wide v1, p5

    .line 78
    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionTimeout:J

    move v1, p7

    .line 79
    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsProgrammatic:Z

    move/from16 v1, p21

    .line 80
    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mObjectPerWaterfall:Z

    move-wide v1, p8

    .line 81
    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMinTimeToWaitBeforeFirstAuction:J

    move-wide v1, p10

    .line 82
    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionRetryInterval:J

    move-wide v1, p12

    .line 83
    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mTimeToWaitBeforeAuction:J

    move-wide/from16 v1, p14

    .line 84
    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mTimeToWaitBeforeLoad:J

    move/from16 v1, p16

    .line 85
    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsAuctionOnShowStart:Z

    move/from16 v1, p17

    .line 86
    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsLoadWhileShow:Z

    move/from16 v1, p18

    .line 87
    iput v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->timeToDeleteOldWaterfallAfterAuction:I

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->disableLoadWhileShowSupportFor:Ljava/util/ArrayList;

    move/from16 v1, p19

    .line 89
    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mCompressAuctionRequest:Z

    move/from16 v1, p20

    .line 90
    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mCompressAuctionResponse:Z

    move/from16 v1, p22

    .line 91
    iput v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mEncryptionVersion:I

    move/from16 v1, p23

    .line 92
    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mShouldSendBannerBURLFromImpression:Z

    return-void
.end method


# virtual methods
.method public addLoadWhileShowSupportProvider(Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->disableLoadWhileShowSupportFor:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAuctionData()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionData:Ljava/lang/String;

    return-object v0
.end method

.method public getAuctionRetryInterval()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionRetryInterval:J

    return-wide v0
.end method

.method public getAuctionSavedHistoryLimit()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionSavedHistoryLimit:I

    return v0
.end method

.method public getEncryptionVersion()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mEncryptionVersion:I

    return v0
.end method

.method public getIsAuctionOnShowStart()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsAuctionOnShowStart:Z

    return v0
.end method

.method public getIsLoadWhileShow()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsLoadWhileShow:Z

    return v0
.end method

.method public getIsProgrammatic()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mIsProgrammatic:Z

    return v0
.end method

.method public getLoadWhileShowSupportArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->disableLoadWhileShowSupportFor:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumOfMaxTrials()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMaxTrials:I

    return v0
.end method

.method public getObjectPerWaterfall()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mObjectPerWaterfall:Z

    return v0
.end method

.method public getTimeToDeleteOldWaterfallAfterAuction()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->timeToDeleteOldWaterfallAfterAuction:I

    return v0
.end method

.method public getTimeToWaitBeforeAuctionMs()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mTimeToWaitBeforeAuction:J

    return-wide v0
.end method

.method public getTimeToWaitBeforeFirstAuctionMs()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mMinTimeToWaitBeforeFirstAuction:J

    return-wide v0
.end method

.method public getTimeToWaitBeforeLoadMs()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mTimeToWaitBeforeLoad:J

    return-wide v0
.end method

.method public getTrialsInterval()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mAuctionTimeout:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressAuctionRequest()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mCompressAuctionRequest:Z

    return v0
.end method

.method public isCompressAuctionResponse()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mCompressAuctionResponse:Z

    return v0
.end method

.method public shouldSendBannerBURLFromImpression()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->mShouldSendBannerBURLFromImpression:Z

    return v0
.end method
