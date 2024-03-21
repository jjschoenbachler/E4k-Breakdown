.class public Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
.super Ljava/lang/Object;
.source "SessionDepthManager.java"


# static fields
.field public static final BANNER:I = 0x3

.field public static final INTERSTITIAL:I = 0x2

.field public static final NONE:I = -0x1

.field public static final OFFERWALL:I = 0x0

.field public static final REWARDEDVIDEO:I = 0x1

.field private static mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;


# instance fields
.field private mBannerDepth:I

.field private mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;

.field private mInterstitialDepth:I

.field private mOfferwallDepth:I

.field private mRewardedVideoDepth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    .line 12
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    .line 13
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    .line 14
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    .line 35
    new-instance v0, Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;

    .line 36
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->setRewardedVideoDepth(I)V

    .line 37
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->setInterstitialDepth(I)V

    .line 38
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->setBannerDepth(I)V

    return-void
.end method

.method private getAdUnitFromInt(I)Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :pswitch_0
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object p1

    .line 100
    :pswitch_1
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object p1

    .line 97
    :pswitch_2
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object p1

    .line 94
    :pswitch_3
    sget-object p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    .line 31
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInstance:Lcom/ironsource/mediationsdk/utils/SessionDepthManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0

    throw v1
.end method

.method private setBannerDepth(I)V
    .locals 1

    .line 129
    iput p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    .line 130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;->setBannerSessionDepthGlobalData(I)V

    return-void
.end method

.method private setInterstitialDepth(I)V
    .locals 1

    .line 124
    iput p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    .line 125
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;->setInterstitialSessionDepthGlobalData(I)V

    return-void
.end method

.method private setRewardedVideoDepth(I)V
    .locals 1

    .line 119
    iput p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    .line 120
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;->setRewardedVideoSessionDepthGlobalData(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getSessionDepth(I)I
    .locals 0

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getAdUnitFromInt(I)Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSessionDepth(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 71
    monitor-exit p0

    return v0

    .line 73
    :cond_0
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/SessionDepthManager$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p1, :pswitch_data_0

    .line 87
    monitor-exit p0

    return v0

    .line 84
    :pswitch_0
    :try_start_1
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 81
    :pswitch_1
    :try_start_2
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 78
    :pswitch_2
    :try_start_3
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    .line 75
    :pswitch_3
    :try_start_4
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized increaseSessionDepth(I)V
    .locals 0

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getAdUnitFromInt(I)Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized increaseSessionDepth(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 43
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mBannerDepth:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->setBannerDepth(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mInterstitialDepth:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->setInterstitialDepth(I)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mRewardedVideoDepth:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->setRewardedVideoDepth(I)V

    goto :goto_0

    .line 48
    :pswitch_3
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->mOfferwallDepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
