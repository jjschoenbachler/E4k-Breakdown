.class public Lcom/ironsource/mediationsdk/IronSourceObject;
.super Ljava/lang/Object;
.source "IronSourceObject.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/IronSourceInterface;
.implements Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;,
        Lcom/ironsource/mediationsdk/IronSourceObject$IronSourceObjectLoader;
    }
.end annotation


# static fields
.field private static mDidSendEncryptionFailEventInSession:Z = false


# instance fields
.field private final IRONSOURCE_VERSION_STRING:Ljava/lang/String;

.field private final IS_DEMAND_ONLY_INIT_WITH_ACTIVITY:Ljava/lang/String;

.field private final KEY_INIT_COUNTER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAdUnitsToInitialize:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

.field private mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mBnPlacementToLoad:Ljava/lang/String;

.field private mConsent:Ljava/lang/Boolean;

.field private mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

.field private mDemandOnlyBnLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDemandOnlyBnManager:Lcom/ironsource/mediationsdk/DemandOnlyBnManager;

.field private mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

.field private mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

.field private mDidInitBanner:Z

.field private mDidInitInterstitial:Z

.field private mDidInitRewardedVideo:Z

.field private mDynamicUserId:Ljava/lang/String;

.field private mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mExternalImpressionDataHandler:Lcom/ironsource/mediationsdk/impressionData/ExternalImpressionDataHandler;

.field private mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

.field private mInitCounter:I

.field private mInitListener:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

.field private mInitSucceeded:Z

.field private mInitiatedAdUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

.field private mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

.field private mInterstitialObjectPerWaterfall:Z

.field private mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

.field private mIsBnProgrammatic:Z

.field private mIsDemandOnlyBn:Z

.field private mIsDemandOnlyIs:Z

.field private mIsDemandOnlyRv:Z

.field private mIsInitAlreadyReported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsInterstitialLoadBeforeInitCompleted:Z

.field private mIsInterstitialProgrammatic:Z

.field private mIsRewardedVideoLoadBeforeInitCompleted:Z

.field private mIsRewardedVideoManual:Z

.field private mIsRvProgrammatic:Z

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mMediationSegment:Ljava/lang/String;

.field private mMediationType:Ljava/lang/String;

.field private mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

.field private mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

.field private mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

.field private mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

.field private mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

.field private mRequestedAdUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

.field private mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

.field private mRewardedVideoObjectPerWaterfall:Z

.field private mRvProgrammaticMode:I

.field private mRvServerParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServerResponseLocker:Ljava/lang/Object;

.field private mSessionId:Ljava/lang/String;

.field private mShouldSendGetInstanceEvent:Z

.field private mShouldTrackNetworkState:Ljava/lang/Boolean;

.field private mTokenRepository:Lcom/ironsource/mediationsdk/TokenRepository;

.field private mTrackNetworkStateContext:Landroid/content/Context;

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    const-string v0, "!SDK-VERSION-STRING!:com.ironsource:mediationsdk:\u200b7.2.3.1"

    .line 100
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->IRONSOURCE_VERSION_STRING:Ljava/lang/String;

    const-string v0, "Activity="

    .line 101
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->IS_DEMAND_ONLY_INIT_WITH_ACTIVITY:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mServerResponseLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 120
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationSegment:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;

    .line 125
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    .line 129
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 135
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    const-string v3, "sessionDepth"

    .line 139
    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->KEY_INIT_COUNTER:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    .line 198
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeManagers()V

    .line 201
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 202
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    .line 203
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    .line 204
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    .line 205
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    .line 206
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyBn:Z

    .line 207
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInitAlreadyReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 209
    iput v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    .line 210
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    .line 211
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 212
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    .line 213
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;

    .line 214
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 215
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    .line 216
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    .line 218
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    .line 219
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitListener:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

    .line 220
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    .line 221
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    .line 222
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    .line 223
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    .line 224
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnProgrammatic:Z

    .line 225
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 226
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 227
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 228
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    .line 229
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    .line 230
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnManager:Lcom/ironsource/mediationsdk/DemandOnlyBnManager;

    .line 231
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    .line 232
    iput v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    .line 233
    new-instance v0, Lcom/ironsource/mediationsdk/impressionData/ExternalImpressionDataHandler;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/impressionData/ExternalImpressionDataHandler;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mExternalImpressionDataHandler:Lcom/ironsource/mediationsdk/impressionData/ExternalImpressionDataHandler;

    .line 234
    new-instance v0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    .line 235
    new-instance v0, Lcom/ironsource/mediationsdk/TokenRepository;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/TokenRepository;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTokenRepository:Lcom/ironsource/mediationsdk/TokenRepository;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/mediationsdk/IronSourceObject$1;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;-><init>()V

    return-void
.end method

.method private addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 3545
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 3546
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3550
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IronSourceObject addToDictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private varargs declared-synchronized attachAdUnits(Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 9

    monitor-enter p0

    .line 528
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    aget-object v4, p2, v2

    .line 529
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 530
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    goto :goto_1

    .line 531
    :cond_0
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 532
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    goto :goto_1

    .line 533
    :cond_1
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 534
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_5

    .line 541
    :try_start_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz p1, :cond_11

    .line 542
    array-length p1, p2

    :goto_2
    if-ge v1, p1, :cond_11

    aget-object v0, p2, v1

    .line 543
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 544
    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 548
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 550
    :cond_5
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    const/16 v2, 0xe

    if-nez v0, :cond_a

    .line 552
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 555
    array-length v0, p2

    const/4 v4, 0x0

    :goto_3
    if-ge v1, v0, :cond_7

    aget-object v5, p2, v1

    .line 556
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 559
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    :try_start_3
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v4

    .line 565
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    .line 568
    :cond_6
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ad unit has started initializing."

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v5, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_11

    .line 574
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",androidx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isAndroidXAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",Activity="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isActivityExist()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceTempUtils;->isKotlinLibraryExist()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "appLanguage=Kotlin"

    .line 578
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceTempUtils;->testKotlin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    const-string v4, "appLanguage=Java"

    .line 581
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :goto_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isDemandOnlyInit()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 585
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "ext1"

    .line 588
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sessionDepth"

    .line 589
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_2
    move-exception p2

    .line 591
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 593
    :goto_7
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, v2, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 594
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto/16 :goto_e

    .line 598
    :cond_a
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->identifyMediationType(Z)V

    .line 600
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_b

    .line 601
    monitor-exit p0

    return-void

    .line 603
    :cond_b
    :try_start_7
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 606
    array-length v0, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ge v4, v0, :cond_e

    aget-object v6, p2, v4

    .line 608
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 611
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 615
    :try_start_8
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :catch_3
    move-exception v5

    .line 617
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    :goto_9
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 622
    invoke-direct {p0, v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_a

    .line 625
    :cond_c
    invoke-direct {p0, v6, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_a
    const/4 v5, 0x1

    goto :goto_b

    .line 628
    :cond_d
    invoke-direct {p0, v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendAdUnitAlreadyInitializedLog(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    if-eqz v5, :cond_11

    .line 634
    :try_start_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",androidx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isAndroidXAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",Activity="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isActivityExist()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceTempUtils;->isKotlinLibraryExist()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "appLanguage=Kotlin"

    .line 638
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceTempUtils;->testKotlin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_f
    const-string v4, "appLanguage=Java"

    .line 641
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :goto_c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isDemandOnlyInit()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 645
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v0, "ext1"

    .line 648
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sessionDepth"

    .line 649
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_d

    :catch_4
    move-exception p2

    .line 651
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 653
    :goto_d
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, v2, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 654
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 657
    :cond_11
    :goto_e
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 527
    monitor-exit p0

    throw p1

    :goto_f
    nop

    goto :goto_f
.end method

.method private calculateFirstSessionTimestamp()V
    .locals 6

    .line 398
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isInitResponseCached(Landroid/content/Context;)Z

    move-result v1

    .line 400
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getFirstSessionTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    if-nez v1, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 404
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get first session timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 405
    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveFirstSessionTimestamp(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method private connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 11

    .line 2918
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2925
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2926
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2927
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2928
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "using custom identifier"

    invoke-virtual {v2, v4, v5, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_1
    move-object v7, v0

    .line 2932
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v0, :cond_2

    .line 2933
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getSegmentData()Ljava/util/Vector;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_2
    move-object v10, v1

    .line 2937
    :goto_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationType()Ljava/lang/String;

    move-result-object v8

    .line 2939
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v5

    iget-boolean v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v4 .. v10}, Lcom/ironsource/mediationsdk/server/ServerURL;->getCPVProvidersURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 2941
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "serverResponseString is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v1

    .line 2946
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 2947
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "encrypt"

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2948
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "response"

    .line 2950
    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2952
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2953
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "encryptedResponse is empty - return null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v1

    .line 2958
    :cond_4
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getInstance()Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getMediationKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2959
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2960
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "encoded response invalid - return null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    .line 2961
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendEventForDecodingParsingError()V

    return-object v1

    .line 2966
    :cond_5
    new-instance v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, p2, p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2967
    :try_start_1
    sget-object p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->SERVER:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->setOrigin(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;)V

    .line 2969
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2970
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "response invalid - return null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    .line 2975
    :goto_1
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    .line 2976
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object v0
.end method

.method private createInterstitialProviderList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 950
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 951
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 953
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 954
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createRewardedVideoProviderList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 936
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 937
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 939
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 940
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 2

    .line 3491
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3497
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3498
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1

    return-object p1

    .line 3501
    :cond_1
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 3505
    :cond_2
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1

    return-object p1
.end method

.method private getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 4

    .line 2901
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isInitResponseCached(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appKey"

    .line 2903
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getCachedValueByKeyOfCachedInitResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 2904
    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getCachedValueByKeyOfCachedInitResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "response"

    .line 2905
    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getCachedValueByKeyOfCachedInitResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2908
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2909
    new-instance p2, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    sget-object p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->CACHE:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->setOrigin(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 1

    .line 2207
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2211
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;
    .locals 1

    .line 1694
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1698
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getInitServerResponse(Landroid/content/Context;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 3753
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    .line 3754
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object p1

    .line 3757
    :cond_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/InitServerResponse;->loadFromCache(Landroid/content/Context;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;
    .locals 1

    .line 193
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$IronSourceObjectLoader;->INSTANCE:Lcom/ironsource/mediationsdk/IronSourceObject;

    return-object v0
.end method

.method private getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    .locals 5

    .line 3366
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 3367
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 3373
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    .line 3377
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    :try_start_2
    const-string p1, "Default placement was not found"

    .line 3381
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3385
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    move-object p1, v0

    :cond_2
    if-nez p1, :cond_3

    .line 3389
    sget-object p1, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    return-object p1

    .line 3391
    :cond_3
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object p1

    return-object p1

    .line 3368
    :cond_4
    :goto_2
    sget-object p1, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    return-object p1
.end method

.method private getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 1

    .line 2195
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2199
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInterstitialPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 5

    .line 2460
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 2464
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2467
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Default placement was not found, please make sure you are using the right placements."

    .line 2471
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-object v0

    .line 2476
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object v1

    .line 2477
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v1

    .line 2478
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2479
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2480
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 2481
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method private getPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 4

    .line 2009
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 2012
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2015
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Default placement was not found, please make sure you are using the right placements."

    .line 2018
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-object v0

    .line 2023
    :cond_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object v1

    .line 2024
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v1

    .line 2025
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2026
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2027
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method private getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    .locals 5

    .line 3395
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 3396
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 3402
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    .line 3406
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    :try_start_2
    const-string p1, "Default placement was not found"

    .line 3410
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3414
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    move-object p1, v0

    :cond_2
    if-nez p1, :cond_3

    .line 3418
    sget-object p1, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    return-object p1

    .line 3420
    :cond_3
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object p1

    return-object p1

    .line 3397
    :cond_4
    :goto_2
    sget-object p1, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    return-object p1
.end method

.method private getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1687
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRewardedVideoProgrammaticMode(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;)I
    .locals 2

    .line 868
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoObjectPerWaterfall:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsLoadWhileShow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :cond_1
    return v1
.end method

.method private handleBannerLoadBeforeInit()V
    .locals 2

    .line 1213
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1214
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 1215
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1216
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 1217
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 8

    .line 3006
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3007
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3011
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3012
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3016
    :goto_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerConfigurationsReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3017
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 3021
    :goto_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3022
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 3025
    :goto_3
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getPixelSettings()Lcom/ironsource/mediationsdk/utils/PixelSettings;

    move-result-object v5

    .line 3026
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->getPixelEventsEnabled()Z

    move-result v6

    if-eqz v0, :cond_4

    .line 3030
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 3031
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 3032
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 3033
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxNumberOfEvents(I)V

    .line 3034
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxEventsPerBatch(I)V

    .line 3035
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBackupThreshold(I)V

    .line 3036
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 3037
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptInEvents()[I

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptInEvents([ILandroid/content/Context;)V

    .line 3038
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getTriggerEvents()[I

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setTriggerEvents([ILandroid/content/Context;)V

    .line 3039
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getNonConnectivityEvents()[I

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setNonConnectivityEvents([ILandroid/content/Context;)V

    .line 3040
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmentData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    .line 3041
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsCompressionEnabled()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsCompressionEnabled(Z)V

    goto/16 :goto_4

    :cond_4
    if-eqz v4, :cond_5

    .line 3043
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferWallEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 3044
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 3045
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 3046
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxNumberOfEvents(I)V

    .line 3047
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxEventsPerBatch(I)V

    .line 3048
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBackupThreshold(I)V

    .line 3049
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 3050
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptInEvents()[I

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptInEvents([ILandroid/content/Context;)V

    .line 3051
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getTriggerEvents()[I

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setTriggerEvents([ILandroid/content/Context;)V

    .line 3052
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getNonConnectivityEvents()[I

    move-result-object v7

    invoke-virtual {v4, v7, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setNonConnectivityEvents([ILandroid/content/Context;)V

    .line 3053
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmentData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    .line 3054
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsCompressionEnabled()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsCompressionEnabled(Z)V

    goto :goto_4

    .line 3056
    :cond_5
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setIsEventsEnabled(Z)V

    :goto_4
    if-eqz v2, :cond_6

    .line 3059
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 3060
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 3061
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 3062
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 3063
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxEventsPerBatch(I)V

    .line 3064
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 3065
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 3066
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptInEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptInEvents([ILandroid/content/Context;)V

    .line 3067
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getTriggerEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setTriggerEvents([ILandroid/content/Context;)V

    .line 3068
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getNonConnectivityEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setNonConnectivityEvents([ILandroid/content/Context;)V

    .line 3069
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmentData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    .line 3070
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsCompressionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsCompressionEnabled(Z)V

    goto/16 :goto_5

    :cond_6
    if-eqz v3, :cond_7

    .line 3072
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v0

    .line 3073
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 3074
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 3075
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 3076
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxEventsPerBatch(I)V

    .line 3077
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 3078
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 3079
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptInEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptInEvents([ILandroid/content/Context;)V

    .line 3080
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getTriggerEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setTriggerEvents([ILandroid/content/Context;)V

    .line 3081
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getNonConnectivityEvents()[I

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setNonConnectivityEvents([ILandroid/content/Context;)V

    .line 3082
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmentData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    .line 3083
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsCompressionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsCompressionEnabled(Z)V

    goto :goto_5

    .line 3085
    :cond_7
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setIsEventsEnabled(Z)V

    .line 3088
    :goto_5
    sget-object p1, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    invoke-virtual {p1, v6}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->setIsEventsEnabled(Z)V

    if-eqz v6, :cond_8

    .line 3090
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->getPixelEventsUrl()Ljava/lang/String;

    move-result-object p1

    .line 3093
    sget-object v0, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 3096
    sget-object p1, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->getPixelOptOut()[I

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 3099
    sget-object p1, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->getPixelOptIn()[I

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->setOptInEvents([ILandroid/content/Context;)V

    .line 3102
    sget-object p1, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->getPixelEventsCompression()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->setEventsCompressionEnabled(Z)V

    :cond_8
    return-void
.end method

.method private initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 2

    .line 3108
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getPublisherLoggerLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setDebugLevel(I)V

    .line 3109
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string v1, "console"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getConsoleLoggerLevel()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    return-void
.end method

.method private initializeManagers()V
    .locals 3

    const/4 v0, 0x0

    .line 1362
    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 1363
    new-instance v0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;-><init>(Lcom/ironsource/mediationsdk/logger/LogListener;I)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    .line 1364
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->addLogger(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V

    .line 1366
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .line 1368
    new-instance v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    .line 1369
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    .line 1371
    new-instance v0, Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    .line 1372
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    .line 1374
    new-instance v0, Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/OfferwallManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    .line 1375
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V

    return-void
.end method

.method private initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 0

    .line 3000
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    .line 3001
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    return-void
.end method

.method private isBannerConfigurationsReady()Z
    .locals 1

    .line 2600
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2601
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2602
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBannerConfigured()Z
    .locals 1

    .line 2613
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerConfigurationsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2614
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerWaterfallReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBannerWaterfallReady()Z
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2607
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2608
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2609
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInterstitialConfigurationsReady()Z
    .locals 1

    .line 2442
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2443
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2444
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInterstitialConfigured()Z
    .locals 1

    .line 2455
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2456
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialWaterfallReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInterstitialWaterfallReady()Z
    .locals 1

    .line 2448
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2449
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2450
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2451
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOfferwallConfigurationsReady()Z
    .locals 1

    .line 2491
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2492
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2493
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRewardedVideoConfigurationsReady()Z
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1992
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1993
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRewardedVideoConfigured()Z
    .locals 1

    .line 2004
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoWaterfallReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRewardedVideoWaterfallReady()Z
    .locals 1

    .line 1997
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1998
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1999
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2000
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    .locals 5

    .line 1279
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1315
    :pswitch_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1316
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1317
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 1318
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x25a

    const-string v4, "Init had failed"

    invoke-direct {v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v2}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1319
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 1320
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 1322
    :cond_0
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    if-nez p2, :cond_1

    .line 1311
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1312
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(Z)V

    goto/16 :goto_2

    .line 1298
    :pswitch_2
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz p1, :cond_3

    .line 1299
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1300
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "initISDemandOnly() had failed"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1302
    :cond_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto/16 :goto_2

    .line 1304
    :cond_3
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    if-eqz p1, :cond_8

    .line 1305
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    .line 1306
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v0, "init() had failed"

    const-string v1, "Interstitial"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_2

    .line 1281
    :pswitch_3
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v0, :cond_5

    .line 1282
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1283
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "initISDemandOnly() had failed"

    const-string v2, "Rewarded Video"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    .line 1285
    :cond_4
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_2

    .line 1287
    :cond_5
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    if-eqz v0, :cond_6

    .line 1288
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoLoadBeforeInitCompleted:Z

    if-eqz p1, :cond_8

    .line 1289
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoLoadBeforeInitCompleted:Z

    .line 1290
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v0, "init() had failed"

    const-string v1, "Rewarded Video"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    .line 1292
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1293
    :cond_7
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareEventManagers(Landroid/content/Context;)V
    .locals 3

    .line 1328
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    invoke-static {}, Lcom/ironsource/mediationsdk/events/SuperLooper;->getLooper()Lcom/ironsource/mediationsdk/events/SuperLooper;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;

    invoke-direct {v1, p1}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V

    .line 1332
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 1333
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 1334
    sget-object v0, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    :cond_0
    return-void
.end method

.method private reportInitSuccessIfNeeded()V
    .locals 3

    .line 3854
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitListener:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInitAlreadyReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3855
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "onInitializationCompleted()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3858
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 3859
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    const v2, 0x13a82

    invoke-direct {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 3860
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 3862
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitListener:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InitializationListener;->onInitializationComplete()V

    :cond_0
    return-void
.end method

.method private sendAdUnitAlreadyInitializedLog(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 3

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ad unit has already been initialized"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 522
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 523
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    return-void
.end method

.method private sendEventForDecodingParsingError()V
    .locals 4

    .line 2984
    sget-boolean v0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidSendEncryptionFailEventInSession:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2985
    sput-boolean v0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidSendEncryptionFailEventInSession:Z

    const/4 v1, 0x0

    .line 2986
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v2, "status"

    const-string v3, "false"

    .line 2988
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errorCode"

    .line 2989
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2991
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2993
    :goto_0
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x72

    invoke-direct {v0, v2, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2994
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    :cond_0
    return-void
.end method

.method private sendIsCappedEvent(ZLjava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 3443
    :cond_0
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    iget v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 3446
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "placement"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p2, v2, v0

    aput-object v2, v1, v4

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    :cond_1
    const/16 p2, 0x456

    .line 3449
    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    return-void
.end method

.method private sendScreenSizeEvent(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3867
    invoke-static {p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->getScreenSizeParams(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 3869
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ext1"

    .line 3871
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3873
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3875
    :goto_0
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const v1, 0x157c4

    invoke-direct {p1, v1, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 3876
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    :cond_0
    return-void
.end method

.method private sentEventWithISEventManager(ILorg/json/JSONObject;)V
    .locals 1

    .line 3425
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 3426
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sentEventWithRVEventManager(ILorg/json/JSONObject;)V
    .locals 1

    .line 3430
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 3431
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private setupAdvertisingIdSettings()V
    .locals 2

    .line 426
    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getMediationMetaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "is_deviceid_optout"

    .line 428
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "is_deviceid_optout"

    .line 429
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    invoke-static {v0}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 432
    sget-object v1, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->INSTANCE:Lcom/ironsource/environment/DeviceConfigurationsDataHolder;

    invoke-virtual {v1, v0}, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->setShouldUseAdvertisingId(Z)V

    :cond_0
    return-void
.end method

.method private setupAppSetSettings()V
    .locals 3

    .line 410
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    sget-object v1, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->INSTANCE:Lcom/ironsource/environment/DeviceConfigurationsDataHolder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getGeneralSettings()Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->getShouldUseAppSet()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->setShouldUseAppSet(Z)V

    .line 418
    sget-object v1, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->INSTANCE:Lcom/ironsource/environment/DeviceConfigurationsDataHolder;

    .line 419
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getGeneralSettings()Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->getShouldReuseAdvId()Z

    move-result v0

    .line 418
    invoke-virtual {v1, v0}, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->setShouldReuseAdvertisingId(Z)V

    :cond_0
    return-void
.end method

.method private showProgrammaticInterstitial(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 2221
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    .line 2224
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v1

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const-string v1, "showProgrammaticInterstitial error: empty default placement in response"

    .line 2229
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2230
    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x3fc

    invoke-direct {v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 2231
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    .line 2236
    :goto_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showProgrammaticInterstitial()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2239
    :cond_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialObjectPerWaterfall:Z

    if-eqz v0, :cond_2

    .line 2240
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    new-instance v1, Lcom/ironsource/mediationsdk/model/Placement;

    invoke-direct {v1, p1}, Lcom/ironsource/mediationsdk/model/Placement;-><init>(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->showAd(Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_2

    .line 2242
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->showInterstitial(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private showProgrammaticRewardedVideo(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1708
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    .line 1711
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v2

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const-string v2, "showProgrammaticRewardedVideo error: empty default placement in response"

    .line 1716
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1717
    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x3fd

    invoke-direct {v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1718
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_1
    move-exception v2

    move-object p1, v1

    .line 1723
    :goto_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "showProgrammaticRewardedVideo()"

    invoke-virtual {v3, v4, v5, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1727
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoObjectPerWaterfall:Z

    if-eqz v2, :cond_3

    .line 1728
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->showAd(Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_2

    .line 1729
    :cond_3
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v2, :cond_4

    .line 1730
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/IProgRvManager;->showRewardedVideo(Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_2

    :cond_4
    const-string p1, "showProgrammaticRewardedVideo - show called before init completed, managers not initiated yet"

    .line 1733
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1734
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x3ff

    invoke-direct {v0, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1735
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :goto_2
    return-void
.end method

.method private startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 2

    .line 709
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 720
    :pswitch_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startBanner()V

    goto :goto_0

    .line 717
    :pswitch_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->initOfferwall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :pswitch_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startInterstitial()V

    goto :goto_0

    .line 711
    :pswitch_3
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startRewardedVideo()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startBanner()V
    .locals 13

    .line 1139
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyBn:Z

    if-eqz v0, :cond_0

    .line 1140
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startDemandOnlyBn()V

    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1145
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsProgrammatic()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnProgrammatic:Z

    .line 1146
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsBnProgrammatic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnProgrammatic:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 1147
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsBnLoadBeforeInitCompleted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const v1, 0x14438

    .line 1148
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnProgrammatic:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 1149
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1150
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1151
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1152
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1153
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1156
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1161
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1162
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnProgrammatic:Z

    if-eqz v1, :cond_3

    .line 1163
    invoke-direct {p0, v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->startProgrammaticBn(Ljava/util/ArrayList;)V

    .line 1164
    monitor-exit v0

    return-void

    .line 1167
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerAdaptersSmartLoadTimeout()J

    move-result-wide v9

    .line 1168
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerRefreshInterval()I

    move-result v11

    .line 1169
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerDelayLoadFailure()I

    move-result v12

    .line 1170
    new-instance v1, Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v8

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/ironsource/mediationsdk/BannerManager;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JII)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    .line 1171
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->handleBannerLoadBeforeInit()V

    goto :goto_1

    .line 1174
    :cond_4
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnProgrammatic:Z

    invoke-static {v4, v1, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    .line 1175
    new-array v2, v3, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v4

    const/16 v6, 0x3f2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v5, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v2, 0x14572

    .line 1176
    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 1177
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v1, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    .line 1180
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :goto_2
    nop

    goto :goto_2
.end method

.method private startDemandOnlyBn()V
    .locals 6

    .line 1184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Banner started in demand only mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1187
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1188
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1190
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1191
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1195
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1199
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1

    .line 1200
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/BannerConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnManager:Lcom/ironsource/mediationsdk/DemandOnlyBnManager;

    .line 1201
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1201
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x1

    .line 1205
    invoke-static {v3, v3, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    .line 1206
    new-array v2, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x14572

    .line 1207
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 1208
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_1
    return-void
.end method

.method private startDemandOnlyIs()V
    .locals 7

    .line 1079
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Interstitial started in demand only mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1082
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1083
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1085
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1086
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1090
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1094
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1

    .line 1095
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    .line 1096
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1099
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->loadInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1096
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x1

    .line 1104
    invoke-static {v3, v3, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    .line 1105
    new-array v2, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    .line 1106
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 1108
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_2
    return-void
.end method

.method private startDemandOnlyRv()V
    .locals 7

    .line 759
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Rewarded Video started in demand only mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 762
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 765
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 766
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 774
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1

    .line 775
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    .line 776
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 780
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    return-void

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 786
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->loadRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 776
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 791
    :cond_4
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_2
    return-void
.end method

.method private startInterstitial()V
    .locals 4

    .line 1113
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v0, :cond_0

    .line 1114
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startDemandOnlyIs()V

    return-void

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsProgrammatic()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    .line 1120
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getObjectPerWaterfall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialObjectPerWaterfall:Z

    const v0, 0x14050

    const/4 v1, 0x0

    .line 1121
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 1123
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    if-eqz v0, :cond_2

    .line 1125
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialObjectPerWaterfall:Z

    if-eqz v0, :cond_1

    .line 1126
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startInterstitialObjectPerWaterfall()V

    return-void

    .line 1130
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startProgrammaticIs()V

    return-void

    .line 1134
    :cond_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startTraditionalIs()V

    return-void
.end method

.method private startInterstitialObjectPerWaterfall()V
    .locals 8

    .line 962
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 964
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->createInterstitialProviderList()Ljava/util/List;

    move-result-object v2

    .line 966
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x0

    if-lez v0, :cond_1

    .line 968
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getImpressionDataListeners()Ljava/util/HashSet;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    .line 971
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->shouldTrackNetworkState(Z)V

    .line 975
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_2

    .line 976
    iput-boolean v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    .line 977
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->loadAd()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 982
    invoke-static {v7, v0, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    .line 983
    new-array v2, v0, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v7

    const/16 v4, 0x3f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object v3, v2, v7

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    .line 984
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 986
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startProgrammaticBn(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;)V"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Banner started in programmatic mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1071
    new-instance v0, Lcom/ironsource/mediationsdk/BannerData;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/BannerConfigurations;)V

    .line 1072
    new-instance v1, Lcom/ironsource/mediationsdk/ProgBannerManager;

    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getImpressionDataListeners()Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/ironsource/mediationsdk/ProgBannerManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/BannerData;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    .line 1074
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->handleBannerLoadBeforeInit()V

    return-void
.end method

.method private startProgrammaticIs()V
    .locals 12

    .line 993
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Adunit: Interstitial is now initiated - programmatic mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 995
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->createInterstitialProviderList()Ljava/util/List;

    move-result-object v5

    .line 997
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 999
    new-instance v0, Lcom/ironsource/mediationsdk/ProgIsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getISDelayLoadFailure()I

    move-result v9

    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getImpressionDataListeners()Ljava/util/HashSet;

    move-result-object v10

    iget-object v11, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/ironsource/mediationsdk/ProgIsManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    .line 1002
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 1005
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/InterstitialManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 1010
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_2

    .line 1011
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    .line 1012
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadInterstitial()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1015
    invoke-static {v3, v0, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    .line 1016
    new-array v2, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    .line 1017
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 1019
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startProgrammaticRv()V
    .locals 11

    .line 726
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Rewarded Video started in programmatic mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 728
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->createRewardedVideoProviderList()Ljava/util/List;

    move-result-object v5

    .line 730
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 733
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsLoadWhileShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    new-instance v0, Lcom/ironsource/mediationsdk/LWSProgRvManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getImpressionDataListeners()Ljava/util/HashSet;

    move-result-object v9

    iget-object v10, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/ironsource/mediationsdk/LWSProgRvManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    goto :goto_0

    .line 739
    :cond_0
    new-instance v0, Lcom/ironsource/mediationsdk/ProgRvManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getImpressionDataListeners()Ljava/util/HashSet;

    move-result-object v9

    iget-object v10, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/ironsource/mediationsdk/ProgRvManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    .line 742
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/IProgRvManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 745
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    goto :goto_1

    .line 751
    :cond_1
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    const/4 v1, 0x1

    invoke-static {v3, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    .line 752
    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x13da2

    .line 753
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 754
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private startRewardedVideo()V
    .locals 4

    .line 873
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v0, :cond_0

    .line 874
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startDemandOnlyRv()V

    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsProgrammatic()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    .line 880
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getObjectPerWaterfall()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoObjectPerWaterfall:Z

    .line 881
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoProgrammaticMode(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    const v0, 0x13c68

    .line 882
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    iget v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    invoke-static {v2, v1, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 884
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoObjectPerWaterfall:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 889
    :cond_3
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v0, :cond_4

    .line 890
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startProgrammaticRv()V

    return-void

    .line 894
    :cond_4
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startTraditionalRv()V

    return-void

    .line 885
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->startRewardedVideoObjectPerWaterfall()V

    return-void
.end method

.method private startRewardedVideoObjectPerWaterfall()V
    .locals 9

    .line 898
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 900
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->createRewardedVideoProviderList()Ljava/util/List;

    move-result-object v2

    .line 902
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    if-lez v0, :cond_1

    .line 904
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 906
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    .line 907
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    .line 909
    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getImpressionDataListeners()Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;-><init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;ZLjava/util/Set;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    .line 914
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->shouldTrackNetworkState(Z)V

    .line 919
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    if-eqz v0, :cond_2

    .line 920
    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoLoadBeforeInitCompleted:Z

    .line 921
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->loadAd()V

    goto :goto_0

    .line 926
    :cond_1
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    const/4 v1, 0x1

    invoke-static {v8, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    .line 927
    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v8

    const/16 v4, 0x3f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object v3, v2, v8

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x13da2

    .line 928
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 930
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v8}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startTraditionalIs()V
    .locals 6

    .line 1024
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v1

    .line 1027
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getISDelayLoadFailure()I

    move-result v2

    .line 1028
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->setDelayLoadFailureNotificationInSeconds(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1030
    :goto_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1031
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1033
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1034
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1037
    new-instance v5, Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-direct {v5, v4, v1}, Lcom/ironsource/mediationsdk/InterstitialSmash;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V

    .line 1039
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1040
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setInterstitialManagerListener(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V

    add-int/lit8 v4, v3, 0x1

    .line 1042
    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setProviderPriority(I)V

    .line 1043
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/InterstitialManager;->addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1049
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1050
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v0

    .line 1051
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->setSmartLoadAmount(I)V

    .line 1053
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/InterstitialManager;->initInterstitial(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_3

    .line 1055
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    .line 1056
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadInterstitial()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 1059
    invoke-static {v2, v2, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v1

    .line 1060
    new-array v3, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object v4, v3, v2

    invoke-direct {p0, v1, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v0, 0x1418a

    .line 1061
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 1063
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private startTraditionalRv()V
    .locals 6

    .line 796
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 799
    :goto_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 800
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 802
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 803
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 806
    new-instance v5, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v5, v4, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V

    .line 808
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 809
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    add-int/lit8 v4, v3, 0x1

    .line 810
    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setProviderPriority(I)V

    .line 811
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addSmashToArray(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 817
    :cond_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 818
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isUltraEventsEnabled()Z

    move-result v2

    .line 819
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setIsUltraEventsEnabled(Z)V

    .line 821
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v2

    .line 822
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setSmartLoadAmount(I)V

    .line 824
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getManualLoadIntervalInSeconds()I

    move-result v2

    .line 825
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setManualLoadInterval(I)V

    .line 827
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVBackFillProvider()Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 830
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 833
    new-instance v3, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v3, v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V

    .line 835
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 837
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setBackfillSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 842
    :cond_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVPremiumProvider()Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 845
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 848
    new-instance v3, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {v3, v2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;I)V

    .line 850
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 851
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 852
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setPremiumSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 857
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getExpiredDurationInMinutes()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setExpiredDurationInMinutes(I)V

    .line 858
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getUserIdForNetworks()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 860
    :cond_4
    iget v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    invoke-static {v2, v2, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    .line 861
    new-array v3, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v3, v2

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    const v1, 0x13da2

    .line 862
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 863
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :goto_1
    return-void
.end method

.method private updateDataWithPreInitInfo(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3744
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setInitialData(Landroid/content/Context;)V

    .line 3745
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setMediationVersion(Ljava/lang/String;)V

    .line 3746
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setSessionId(Ljava/lang/String;)V

    .line 3747
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setPluginType(Ljava/lang/String;)V

    .line 3748
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-static {}, Lcom/ironsource/isadplayer/ISAdPlayer;->getInfo()Lcom/ironsource/isadplayer/ISAdPlayerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setAdPlayerInfo(Lcom/ironsource/isadplayer/ISAdPlayerInfo;)V

    .line 3749
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isGooglePlayInstalled(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setGooglePlayInstalled(Z)V

    return-void
.end method

.method private validateAlphanumeric(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 3209
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 3

    .line 3161
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x5

    const/16 v2, 0xa

    .line 3165
    invoke-direct {p0, p1, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3166
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "appKey"

    const-string v2, "should contain only english characters and numbers"

    .line 3167
    invoke-static {v1, p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 3169
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_0
    const-string v1, "appKey"

    const-string v2, "length should be between 5-10 characters"

    .line 3172
    invoke-static {v1, p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 3174
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 3177
    :cond_1
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fa

    const-string v2, "Init Fail - appKey is missing"

    invoke-direct {p1, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 3178
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x80

    .line 3196
    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "dynamicUserId"

    const-string v0, "SupersonicAds"

    const-string v1, "dynamicUserId is invalid, should be between 1-128 chars in length."

    .line 3197
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3187
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x40

    if-le p1, v0, :cond_0

    const-string p1, "segment"

    const-string v0, "SupersonicAds"

    const-string v1, "segment value should not exceed 64 characters."

    .line 3188
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "segment"

    const-string v0, "SupersonicAds"

    const-string v1, "segment value should not exceed 64 characters."

    .line 3191
    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private validateSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)Z
    .locals 2

    .line 1222
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerIteration()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerSession()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .locals 3
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "addImpressionDataListener - listener is null"

    .line 3764
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3767
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3770
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v0, :cond_1

    .line 3771
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/IProgRvManager;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3773
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v0, :cond_2

    .line 3774
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3776
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    if-eqz v0, :cond_3

    .line 3777
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3779
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    if-eqz v0, :cond_4

    .line 3780
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3782
    :cond_4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    if-eqz v0, :cond_5

    .line 3783
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3785
    :cond_5
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add impression data listener to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized addOWAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 0

    monitor-enter p0

    .line 1340
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1339
    monitor-exit p0

    throw p1
.end method

.method public clearRewardedVideoServerParameters()V
    .locals 1

    const/4 v0, 0x0

    .line 1851
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;

    return-void
.end method

.method public createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 4

    .line 2618
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "createBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_0

    .line 2620
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "createBanner() : Activity cannot be null"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    .line 2625
    :cond_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 2627
    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object v0
.end method

.method public createBannerForDemandOnly(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;
    .locals 4

    .line 2631
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "createBannerForDemandOnly()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    if-nez p1, :cond_0

    .line 2633
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "createBannerForDemandOnly() : Activity cannot be null"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1

    .line 2638
    :cond_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 2640
    new-instance v0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object v0
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 4

    .line 2721
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2725
    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnProgrammatic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    if-eqz v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    goto :goto_0

    .line 2727
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v0, :cond_1

    .line 2728
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2731
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner()"

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroyISDemandOnlyBanner(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;)V
    .locals 4

    .line 2736
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyBanner()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2739
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnManager:Lcom/ironsource/mediationsdk/DemandOnlyBnManager;

    if-eqz v0, :cond_0

    .line 2740
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnManager:Lcom/ironsource/mediationsdk/DemandOnlyBnManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->destroyBanner(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2743
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "destroyISDemandOnlyBanner()"

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 3250
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->usedAdvertisingId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3251
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3252
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method getAllSettingsForProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3484
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-nez v0, :cond_0

    .line 3485
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 3487
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsByReflectionName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 3460
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$PlacementCappingManager$ECappingStatus:[I

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    return-object v0

    .line 3464
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "placement "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is capped"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getConsent()Ljava/lang/Boolean;
    .locals 1

    .line 3538
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    return-object v0
.end method

.method getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 1

    .line 3472
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object v0
.end method

.method public getDynamicUserId()Ljava/lang/String;
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getISDemandOnlyBiddingData()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const v1, 0x1443d

    .line 3621
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 3622
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    .line 3624
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-nez v1, :cond_0

    .line 3625
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "bidding data cannot be retrieved, SDK not initialized"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3627
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v1

    const-string v2, "IronSource"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3629
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3630
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getApplicationSettings()Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v4, v6, v5}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3633
    :try_start_0
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getPlayerBiddingData()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    goto/16 :goto_3

    .line 3635
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getTokenSettings()Lcom/ironsource/mediationsdk/utils/TokenSettings;

    move-result-object v1

    .line 3639
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->isOneToken()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3640
    new-instance v2, Lcom/ironsource/environment/token/TokenProvider;

    invoke-direct {v2}, Lcom/ironsource/environment/token/TokenProvider;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/environment/token/TokenProvider;->getToken()Lorg/json/JSONObject;

    move-result-object v2

    .line 3642
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendTCSTroubleshootEventIfExist(Lorg/json/JSONObject;Z)V

    goto :goto_1

    .line 3644
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->getGenericParams()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->getOptInKeyParamsTokenArray()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->createToken(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3647
    :goto_1
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bidding data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 3649
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw biddingData length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3652
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->isCompressToken()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3653
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->compressAndEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3655
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v1, :cond_5

    .line 3659
    :try_start_1
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "biddingData length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_3
    const v3, 0x1443f

    .line 3663
    invoke-direct {p0, v3, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 3664
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got error during creating the token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_5

    :cond_4
    :goto_4
    move-object v1, v0

    :cond_5
    :goto_5
    if-nez v1, :cond_6

    const v2, 0x1443e

    .line 3670
    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    :cond_6
    return-object v1
.end method

.method public getISDemandOnlyBiddingData(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x1443d

    .line 3683
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    if-nez p1, :cond_0

    .line 3685
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "bidding data cannot be retrieved, context required"

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-object v0

    .line 3689
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v1

    .line 3691
    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const v3, 0x1443e

    if-ne v1, v2, :cond_1

    .line 3692
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "bidding data cannot be retrieved, SDK not initialized"

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 3693
    invoke-direct {p0, v3, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    return-object v0

    .line 3697
    :cond_1
    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v2, :cond_2

    .line 3698
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "bidding data cannot be retrieved, SDK failed to initialize"

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 3699
    invoke-direct {p0, v3, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    return-object v0

    .line 3705
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInitServerResponse(Landroid/content/Context;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v2

    .line 3707
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v4, :cond_3

    .line 3708
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->updateDataWithPreInitInfo(Landroid/content/Context;)V

    .line 3711
    :cond_3
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-eq v1, v4, :cond_4

    .line 3712
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitType(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    if-eqz v2, :cond_4

    .line 3715
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    .line 3716
    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->updateDataWithInitResponse(Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    .line 3720
    :cond_4
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getTokenSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/TokenSettings;

    move-result-object v1

    .line 3721
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTokenRepository:Lcom/ironsource/mediationsdk/TokenRepository;

    invoke-virtual {v2, p1, v1}, Lcom/ironsource/mediationsdk/TokenRepository;->getBiddingData(Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/TokenSettings;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3722
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendTCSTroubleshootEventIfExist(Lorg/json/JSONObject;Z)V

    .line 3723
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->isCompressToken()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3724
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->compressAndEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3725
    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const v1, 0x1443f

    .line 3728
    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 3729
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got error during token creation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_6

    .line 3733
    invoke-direct {p0, v3, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    :cond_6
    return-object p1
.end method

.method public getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 5

    .line 3216
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 3219
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 3220
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v1

    move-object v0, v1

    .line 3223
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    return-object v0
.end method

.method public getIronSourceAppKey()Ljava/lang/String;
    .locals 1

    .line 3153
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIronSourceUserId()Ljava/lang/String;
    .locals 1

    .line 3157
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationSegment()Ljava/lang/String;
    .locals 1

    .line 1564
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationSegment:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationType()Ljava/lang/String;
    .locals 1

    .line 1576
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getOfferwallAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 4

    monitor-enter p0

    .line 1345
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1347
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1351
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfferwallAdapter exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 p1, 0x0

    .line 1353
    monitor-exit p0

    return-object p1

    .line 1344
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public getOfferwallCredits()V
    .locals 4

    const-string v0, "getOfferwallCredits()"

    .line 2567
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2570
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->getOfferwallCredits()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2572
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 5

    .line 3234
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 3237
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 3238
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v1

    move-object v0, v1

    .line 3241
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    return-object v0
.end method

.method public getRvServerParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1572
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;

    return-object v0
.end method

.method getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 6

    .line 2848
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mServerResponseLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 2850
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_0

    .line 2851
    new-instance p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p1, p2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    monitor-exit v0

    return-object p1

    .line 2857
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 2860
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2861
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Null or invalid response. Trying to get cached response"

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2864
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 2870
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 2871
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2874
    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p2

    .line 2875
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x8c

    invoke-direct {v2, v3, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2876
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 2883
    iput-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 2884
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLastResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 2885
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 2888
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setHasServerResponse(Z)V

    .line 2889
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setHasServerResponse(Z)V

    .line 2890
    sget-object p1, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->setHasServerResponse(Z)V

    .line 2893
    :cond_3
    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 3510
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public varargs declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/InitializationListener;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 6

    monitor-enter p0

    .line 253
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    if-eqz p4, :cond_0

    .line 256
    iput-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitListener:Lcom/ironsource/mediationsdk/sdk/InitializationListener;

    .line 259
    :cond_0
    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p4, :cond_12

    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAtomicIsFirstInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p4, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p4

    if-eqz p4, :cond_12

    if-eqz p5, :cond_5

    .line 261
    array-length p4, p5

    if-nez p4, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    array-length p4, p5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_7

    aget-object v3, p5, v2

    .line 272
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 278
    :cond_2
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 279
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    .line 282
    :cond_3
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_5
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p4

    array-length v2, p4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    aget-object v4, p4, v3

    .line 264
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 266
    :cond_6
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    .line 267
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    .line 268
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    .line 287
    :cond_7
    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init(appKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 290
    instance-of p4, p1, Landroid/app/Activity;

    if-eqz p4, :cond_8

    .line 291
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p4

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p4, v2}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 295
    :cond_8
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/ironsource/environment/ContextProvider;->updateAppContext(Landroid/content/Context;)V

    .line 298
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->setBrowserUserAgent()V

    .line 301
    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setMediationVersion(Ljava/lang/String;)V

    .line 302
    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-static {}, Lcom/ironsource/isadplayer/ISAdPlayer;->getInfo()Lcom/ironsource/isadplayer/ISAdPlayerInfo;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setAdPlayerInfo(Lcom/ironsource/isadplayer/ISAdPlayerInfo;)V

    .line 303
    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isGooglePlayInstalled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p4, v2}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setGooglePlayInstalled(Z)V

    .line 306
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object p4

    .line 307
    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 308
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    .line 312
    :cond_9
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->calculateFirstSessionTimestamp()V

    .line 315
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setupAppSetSettings()V

    .line 318
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setupAdvertisingIdSettings()V

    .line 321
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->prepareEventManagers(Landroid/content/Context;)V

    .line 323
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 324
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatusFailed()V

    .line 325
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 326
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 328
    :cond_a
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 329
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 331
    :cond_b
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 337
    :cond_c
    :try_start_1
    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-virtual {p4, p1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setInitialData(Landroid/content/Context;)V

    .line 340
    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    invoke-virtual {p4, v2}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setAppKey(Ljava/lang/String;)V

    .line 341
    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSessionId:Ljava/lang/String;

    invoke-virtual {p4, v2}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setSessionId(Ljava/lang/String;)V

    .line 342
    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setPluginType(Ljava/lang/String;)V

    .line 344
    iget-boolean p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    if-eqz p4, :cond_10

    .line 345
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    invoke-static {p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",androidx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isAndroidXAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",Activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isActivityExist()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceTempUtils;->isKotlinLibraryExist()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "appLanguage=Kotlin"

    .line 351
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceTempUtils;->testKotlin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    const-string v4, "appLanguage=Java"

    .line 354
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :goto_3
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isDemandOnlyInit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 358
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v2, "ext1"

    .line 361
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p5, :cond_f

    .line 363
    array-length p4, p5

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p4, :cond_f

    aget-object v3, p5, v2

    .line 364
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    const-string p4, "sessionDepth"

    .line 367
    iget v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {p3, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception p4

    .line 369
    :try_start_3
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    :goto_5
    new-instance p4, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0xe

    invoke-direct {p4, v1, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 372
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 373
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    .line 376
    :cond_10
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object p4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 377
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {p3, p4}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;)V

    .line 380
    :cond_11
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;)V

    .line 381
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mExternalImpressionDataHandler:Lcom/ironsource/mediationsdk/impressionData/ExternalImpressionDataHandler;

    invoke-virtual {p3, p4}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;)V

    .line 382
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/ironsource/mediationsdk/MediationInitializer;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_6

    :cond_12
    if-eqz p5, :cond_13

    .line 385
    invoke-direct {p0, p3, p5}, Lcom/ironsource/mediationsdk/IronSourceObject;->attachAdUnits(Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 388
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne p1, p2, :cond_14

    if-nez p3, :cond_14

    .line 389
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->reportInitSuccessIfNeeded()V

    goto :goto_6

    .line 392
    :cond_13
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p3, "Multiple calls to init without ad units are not allowed"

    const/4 p4, 0x3

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    :cond_14
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 252
    monitor-exit p0

    throw p1

    :goto_7
    nop

    goto :goto_7
.end method

.method public varargs declared-synchronized initISDemandOnly(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InitializationListener;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 8

    monitor-enter p0

    .line 439
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p4, :cond_8

    .line 440
    array-length v2, p4

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 462
    :cond_0
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_c

    aget-object v4, p4, v3

    .line 463
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 464
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ad unit cannot be initialized in demand only mode"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v4, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_3

    .line 468
    :cond_1
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 469
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    if-eqz v5, :cond_2

    .line 470
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendAdUnitAlreadyInitializedLog(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_1

    .line 472
    :cond_2
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    .line 473
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 474
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_3
    :goto_1
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 480
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    if-eqz v5, :cond_4

    .line 481
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendAdUnitAlreadyInitializedLog(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_2

    .line 483
    :cond_4
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    .line 484
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 485
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_5
    :goto_2
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 491
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    if-eqz v5, :cond_6

    .line 492
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendAdUnitAlreadyInitializedLog(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_3

    .line 494
    :cond_6
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyBn:Z

    .line 495
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 496
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    :cond_8
    :goto_4
    iget-boolean p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    if-eqz p4, :cond_9

    .line 442
    sget-object p4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, p4}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendAdUnitAlreadyInitializedLog(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_5

    .line 444
    :cond_9
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    .line 445
    sget-object p4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :goto_5
    iget-boolean p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    if-eqz p4, :cond_a

    .line 449
    sget-object p4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, p4}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendAdUnitAlreadyInitializedLog(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_6

    .line 451
    :cond_a
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    .line 452
    sget-object p4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :goto_6
    iget-boolean p4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    if-eqz p4, :cond_b

    .line 456
    sget-object p4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {p0, p4}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendAdUnitAlreadyInitializedLog(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_7

    .line 458
    :cond_b
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyBn:Z

    .line 459
    sget-object p4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    if-eqz p1, :cond_e

    .line 505
    instance-of p4, p1, Landroid/app/Activity;

    if-eqz p4, :cond_d

    .line 506
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p4

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p4, v1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    .line 510
    :cond_d
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/ironsource/environment/ContextProvider;->updateAppContext(Landroid/content/Context;)V

    .line 513
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_f

    .line 514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 515
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 516
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/ironsource/mediationsdk/sdk/InitializationListener;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 438
    monitor-exit p0

    throw p1

    :goto_8
    nop

    goto :goto_8
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public initOfferwall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method isActivityExist()Z
    .locals 1

    .line 3453
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isBannerPlacementCapped(Ljava/lang/String;)Z
    .locals 6

    .line 3338
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerConfigurationsReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 3344
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    .line 3347
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    .line 3350
    :try_start_2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Banner default placement was not found"

    const/4 v4, 0x3

    invoke-virtual {p1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3355
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object p1, v0

    :cond_2
    if-nez p1, :cond_3

    return v1

    .line 3362
    :cond_3
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isDemandOnlyInit()Z
    .locals 1

    .line 3850
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

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

.method public declared-synchronized isDemandOnlyInterstitialReady(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 2432
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->isInterstitialReady(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 1981
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->isRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .locals 4

    .line 3291
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3295
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    .line 3298
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    invoke-static {v0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v2, "placement"

    .line 3300
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3302
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    if-eqz p1, :cond_2

    const-string p1, "programmatic"

    .line 3303
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3308
    :catch_0
    :cond_2
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x837

    invoke-direct {p1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 3309
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    :cond_3
    return v1
.end method

.method public isInterstitialReady()Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2252
    :try_start_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v2, :cond_0

    .line 2254
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Interstitial was initialized in demand only mode. Use isISDemandOnlyInterstitialReady instead"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return v1

    .line 2256
    :cond_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    if-eqz v2, :cond_3

    .line 2258
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialObjectPerWaterfall:Z

    if-eqz v2, :cond_2

    .line 2260
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->isAdReady()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 2262
    :cond_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->isInterstitialReady()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2266
    :cond_3
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->isInterstitialReady()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2269
    :goto_1
    :try_start_1
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    invoke-static {v1, v3, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v3

    .line 2270
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    if-eqz v2, :cond_4

    const/16 v5, 0x835

    goto :goto_2

    :cond_4
    const/16 v5, 0x836

    :goto_2
    invoke-direct {v4, v5, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2271
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 2273
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInterstitialReady():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto :goto_4

    :catch_0
    move-exception v3

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    goto :goto_3

    :catch_1
    move-exception v2

    const/4 v3, 0x0

    .line 2276
    :goto_3
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInterstitialReady():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2277
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "isInterstitialReady()"

    invoke-virtual {v0, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return v1
.end method

.method public isOfferwallAvailable()Z
    .locals 2

    const/4 v0, 0x0

    .line 2555
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    if-eqz v1, :cond_0

    .line 2556
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->isOfferwallAvailable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public isRewardedVideoAvailable()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1778
    :try_start_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v2, :cond_0

    .line 1779
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Rewarded Video was initialized in demand only mode. Use isISDemandOnlyRewardedVideoAvailable instead"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return v1

    .line 1783
    :cond_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoObjectPerWaterfall:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1785
    :cond_1
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v2, :cond_3

    .line 1786
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/IProgRvManager;->isRewardedVideoAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 1788
    :cond_3
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable()Z

    move-result v2

    goto :goto_2

    .line 1784
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->isAdReady()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1791
    :goto_2
    :try_start_1
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 1793
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v4, :cond_5

    .line 1794
    new-array v4, v0, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "programmatic"

    aput-object v6, v5, v1

    iget v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v5, v4, v1

    invoke-direct {p0, v3, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToDictionary(Lorg/json/JSONObject;[[Ljava/lang/Object;)V

    .line 1797
    :cond_5
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    if-eqz v2, :cond_6

    const/16 v5, 0x44d

    goto :goto_3

    :cond_6
    const/16 v5, 0x44e

    :goto_3
    invoke-direct {v4, v5, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1798
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1799
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRewardedVideoAvailable():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v2

    const/4 v2, 0x0

    .line 1802
    :goto_4
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1803
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "isRewardedVideoAvailable()"

    invoke-virtual {v0, v2, v4, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return v1
.end method

.method isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .locals 2

    .line 3317
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3320
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$PlacementCappingManager$ECappingStatus:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 3332
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendIsCappedEvent(ZLjava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 1

    const-string v0, ""

    .line 2717
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .locals 4

    .line 2644
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placementName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eqz p1, :cond_a

    .line 2647
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 2654
    :cond_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    if-nez v1, :cond_1

    const-string p2, "init() must be called before loadBanner()"

    .line 2656
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2657
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v0

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2661
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2662
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2663
    :cond_2
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "loadBanner: Unsupported banner size. Height and width must be bigger than 0"

    invoke-virtual {p2, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2664
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    const-string v0, ""

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->unsupportedBannerSize(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2669
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v1

    .line 2671
    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v2, :cond_4

    .line 2672
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "init() had failed"

    invoke-virtual {p2, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2673
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x258

    const-string v2, "Init() had failed"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2677
    :cond_4
    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    .line 2678
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2679
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "init() had failed"

    invoke-virtual {p2, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2680
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x259

    const-string v2, "Init had failed"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 2682
    :cond_5
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 2683
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 2684
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    :goto_0
    return-void

    .line 2690
    :cond_6
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerConfigured()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2691
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "No banner configurations found"

    invoke-virtual {p2, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2692
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object p2

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x267

    const-string v2, "the server response does not contain banner data"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2696
    :cond_7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v1

    .line 2697
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    if-nez v0, :cond_8

    .line 2698
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 2699
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 2700
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 2701
    monitor-exit v1

    return-void

    .line 2703
    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2706
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnProgrammatic:Z

    if-nez v0, :cond_9

    .line 2707
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    return-void

    .line 2712
    :cond_9
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/ProgBannerManager;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2703
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2648
    :cond_a
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadBanner can\'t be called - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_b

    const-string v1, "banner layout is null "

    goto :goto_2

    :cond_b
    const-string v1, "banner layout is destroyed"

    :goto_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2649
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2650
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v0

    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public declared-synchronized loadDemandOnlyInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 2320
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadISDemandOnlyInterstitial() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v0, 0x1fe

    .line 2323
    :try_start_1
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    const/4 v2, 0x3

    if-nez v1, :cond_0

    const-string p1, "initISDemandOnly() must be called before loadISDemandOnlyInterstitial()"

    .line 2325
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p3, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2326
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2327
    monitor-exit p0

    return-void

    .line 2330
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-nez v1, :cond_1

    const-string p1, "Interstitial was initialized in mediation mode. Use loadInterstitial instead"

    .line 2332
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p3, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2333
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2334
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2341
    :try_start_3
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 2342
    :cond_2
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_4

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 2343
    :goto_0
    invoke-static {v3, v1, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    const p3, 0x14191

    .line 2344
    invoke-direct {p0, p3, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    const-string p1, "Interstitial was initialized and loaded without Activity"

    .line 2346
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p3, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2347
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x425

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2348
    monitor-exit p0

    return-void

    .line 2351
    :cond_4
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object p1

    .line 2353
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne p1, v4, :cond_5

    .line 2354
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "init() had failed"

    invoke-virtual {p1, p3, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2355
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p1

    const-string p3, "init() had failed"

    const-string v1, "Interstitial"

    invoke-static {p3, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2356
    monitor-exit p0

    return-void

    .line 2359
    :cond_5
    :try_start_5
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const v5, 0x1443b

    if-ne p1, v4, :cond_8

    .line 2360
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2361
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "init() had failed"

    invoke-virtual {p1, p3, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2362
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p1

    const-string p3, "init() had failed"

    const-string v1, "Interstitial"

    invoke-static {p3, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_2

    .line 2364
    :cond_6
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2365
    :try_start_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 2366
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p3, :cond_7

    .line 2369
    :try_start_7
    invoke-static {v3, v3, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    .line 2370
    invoke-direct {p0, v5, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2373
    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p3

    .line 2366
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p3

    .line 2377
    :cond_8
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigured()Z

    move-result p1

    if-nez p1, :cond_9

    .line 2378
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "No interstitial configurations found"

    invoke-virtual {p1, p3, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2379
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p1

    const-string p3, "the server response does not contain interstitial data"

    const-string v1, "Interstitial"

    invoke-static {p3, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2380
    monitor-exit p0

    return-void

    .line 2383
    :cond_9
    :try_start_a
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter p1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2384
    :try_start_b
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-nez v2, :cond_b

    .line 2386
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_a

    .line 2388
    invoke-static {v3, v3, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p3

    .line 2389
    invoke-direct {p0, v5, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 2391
    :cond_a
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    return-void

    .line 2393
    :cond_b
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez p3, :cond_c

    .line 2396
    :try_start_d
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->loadInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 2399
    :cond_c
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {p1, p2, p3, v3}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->loadInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception p3

    .line 2393
    :try_start_e
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw p3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catch_0
    move-exception p1

    .line 2403
    :try_start_10
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "loadDemandOnlyInterstitial"

    invoke-virtual {p3, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2404
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2406
    :goto_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    .line 2319
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadISDemandOnlyBannerWithAdm(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x3

    if-nez p4, :cond_0

    :try_start_0
    const-string p1, "adm cannot be null"

    .line 2752
    iget-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p2, p3, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2753
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/16 v1, 0x1fe

    .line 2757
    :try_start_1
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitBanner:Z

    if-nez v2, :cond_1

    const-string p1, "initISDemandOnly() must be called before loadISDemandOnlyBannerWithAdm()"

    .line 2759
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p3, p4, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2760
    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p3, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2761
    monitor-exit p0

    return-void

    .line 2763
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyBn:Z

    if-nez v2, :cond_2

    const-string p1, "Banner was initialized in mediation mode. Use loadBanner instead"

    .line 2765
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p3, p4, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2766
    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p3, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2767
    monitor-exit p0

    return-void

    :cond_2
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 2774
    :try_start_3
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 2775
    :cond_3
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_5

    if-nez p4, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 2776
    :goto_0
    invoke-static {v2, p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    const p3, 0x14579

    .line 2777
    invoke-direct {p0, p3, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    const-string p1, "Banner was initialized and loaded without Activity"

    .line 2779
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p3, p4, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2780
    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p4, 0x426

    invoke-direct {p3, p4, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2781
    monitor-exit p0

    return-void

    .line 2784
    :cond_5
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object p1

    .line 2786
    sget-object v3, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne p1, v3, :cond_6

    .line 2787
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p4, "init() had failed"

    invoke-virtual {p1, p3, p4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string p1, "init() had failed"

    const-string p3, "Banner"

    .line 2788
    invoke-static {p1, p3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2789
    monitor-exit p0

    return-void

    .line 2792
    :cond_6
    :try_start_5
    sget-object v3, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const v4, 0x1443c

    if-ne p1, v3, :cond_9

    .line 2793
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2794
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p4, "init() had failed"

    invoke-virtual {p1, p3, p4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string p1, "init() had failed"

    const-string p3, "Banner"

    .line 2795
    invoke-static {p1, p3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_2

    .line 2798
    :cond_7
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2799
    :try_start_6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 2800
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p4, :cond_8

    .line 2803
    :try_start_7
    invoke-static {v2, v2, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    .line 2804
    invoke-direct {p0, v4, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2807
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p3

    .line 2800
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p3

    .line 2811
    :cond_9
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter p1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2812
    :try_start_a
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnManager:Lcom/ironsource/mediationsdk/DemandOnlyBnManager;

    if-nez v3, :cond_b

    .line 2814
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_a

    .line 2816
    invoke-static {v2, v2, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p3

    .line 2817
    invoke-direct {p0, v4, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithISEventManager(ILorg/json/JSONObject;)V

    .line 2819
    :cond_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit p0

    return-void

    .line 2821
    :cond_b
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2823
    :try_start_c
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerConfigured()Z

    move-result p1

    if-nez p1, :cond_c

    .line 2824
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p4, "No banner configurations found"

    invoke-virtual {p1, p3, p4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string p1, "the server response does not contain banner data"

    const-string p3, "Banner"

    .line 2825
    invoke-static {p1, p3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2826
    monitor-exit p0

    return-void

    :cond_c
    if-eqz p4, :cond_d

    .line 2830
    :try_start_d
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyBnManager:Lcom/ironsource/mediationsdk/DemandOnlyBnManager;

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/DemandOnlyBnManager;->loadISDemandOnlyBannerWithAdm(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2832
    :cond_d
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string p4, "Banner support bidding mode only"

    invoke-virtual {p1, p3, p4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string p1, "Banner support bidding mode only"

    const-string p3, "Banner"

    .line 2833
    invoke-static {p1, p3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    :catchall_2
    move-exception p3

    .line 2821
    :try_start_e
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw p3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catch_0
    move-exception p1

    .line 2836
    :try_start_10
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "loadDemandOnlyBanner"

    invoke-virtual {p3, p4, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2837
    new-instance p3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2839
    :goto_3
    monitor-exit p0

    return-void

    .line 2749
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadISDemandOnlyInterstitialWithAdm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    :try_start_0
    const-string p1, "adm cannot be null"

    .line 2311
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x3

    invoke-virtual {p3, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2312
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fe

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2313
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2316
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadDemandOnlyInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2317
    monitor-exit p0

    return-void

    .line 2308
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadISDemandOnlyRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1868
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadISDemandOnlyRewardedVideo() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1871
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    const/16 v1, 0x1fc

    const/4 v2, 0x3

    if-nez v0, :cond_0

    const-string p1, "initISDemandOnly() must be called before loadISDemandOnlyRewardedVideo()"

    .line 1873
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p3, v0, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1874
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1875
    monitor-exit p0

    return-void

    .line 1878
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-nez v0, :cond_1

    const-string p1, "Rewarded video was initialized in mediation mode"

    .line 1880
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p3, v0, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1881
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1882
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1889
    :try_start_3
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/environment/ContextProvider;->updateActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 1890
    :cond_2
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_4

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 1891
    :goto_0
    invoke-static {v3, v0, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    const p3, 0x13da9

    .line 1892
    invoke-direct {p0, p3, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    const-string p1, "Rewarded video was initialized and loaded without Activity"

    .line 1894
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p3, v0, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1895
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x424

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1896
    monitor-exit p0

    return-void

    .line 1899
    :cond_4
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object p1

    .line 1901
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne p1, v1, :cond_5

    .line 1902
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "init() had failed"

    invoke-virtual {p1, p3, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1903
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p1

    const-string p3, "init() had failed"

    const-string v0, "Rewarded Video"

    invoke-static {p3, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1904
    monitor-exit p0

    return-void

    .line 1907
    :cond_5
    :try_start_5
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const v4, 0x1443a

    if-ne p1, v1, :cond_8

    .line 1908
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1909
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "init() had failed"

    invoke-virtual {p1, p3, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1910
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p1

    const-string p3, "init() had failed"

    const-string v0, "Rewarded Video"

    invoke-static {p3, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_2

    .line 1912
    :cond_6
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1913
    :try_start_6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1914
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p3, :cond_7

    .line 1917
    :try_start_7
    iget p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    invoke-static {v3, v3, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p1

    .line 1918
    invoke-direct {p0, v4, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1921
    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p3

    .line 1914
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p3

    .line 1925
    :cond_8
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigured()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1926
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v0, "No rewarded video configurations found"

    invoke-virtual {p1, p3, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1927
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p1

    const-string p3, "the server response does not contain rewarded video data"

    const-string v0, "Rewarded Video"

    invoke-static {p3, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1928
    monitor-exit p0

    return-void

    .line 1931
    :cond_9
    :try_start_a
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter p1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1932
    :try_start_b
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-nez v1, :cond_b

    .line 1934
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_a

    .line 1936
    iget p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvProgrammaticMode:I

    invoke-static {v3, v3, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object p3

    .line 1937
    invoke-direct {p0, v4, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->sentEventWithRVEventManager(ILorg/json/JSONObject;)V

    .line 1939
    :cond_a
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    return-void

    .line 1941
    :cond_b
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez p3, :cond_c

    .line 1944
    :try_start_d
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->loadRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1946
    :cond_c
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {p1, p2, p3, v3}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->loadRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception p3

    .line 1941
    :try_start_e
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw p3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catch_0
    move-exception p1

    .line 1950
    :try_start_10
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "loadISDemandOnlyRewardedVideo"

    invoke-virtual {p3, v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1951
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fe

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1953
    :goto_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    .line 1867
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadISDemandOnlyRewardedVideoWithAdm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    :try_start_0
    const-string p1, "adm cannot be null"

    .line 1859
    iget-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x3

    invoke-virtual {p3, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1860
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fe

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1861
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1863
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadISDemandOnlyRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1864
    monitor-exit p0

    return-void

    .line 1856
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public loadInterstitial()V
    .locals 5

    const-string v0, "loadInterstitial()"

    .line 2039
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2042
    :try_start_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    const-string v1, "Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead"

    .line 2044
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2045
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v4, "Interstitial"

    invoke-static {v1, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2049
    :cond_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitInterstitial:Z

    if-nez v1, :cond_1

    const-string v1, "init() must be called before loadInterstitial()"

    .line 2051
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2052
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v4, "Interstitial"

    invoke-static {v1, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2056
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v1

    .line 2058
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v4, :cond_2

    .line 2059
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() had failed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2060
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "init() had failed"

    const-string v4, "Interstitial"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2064
    :cond_2
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v4, :cond_4

    .line 2065
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2066
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() had failed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2067
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "init() had failed"

    const-string v4, "Interstitial"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 2069
    :cond_3
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    :goto_0
    return-void

    .line 2075
    :cond_4
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigured()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2076
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "No interstitial configurations found"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2077
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "the server response does not contain interstitial data"

    const-string v4, "Interstitial"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2081
    :cond_5
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    if-nez v1, :cond_6

    .line 2082
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadInterstitial()V

    return-void

    .line 2086
    :cond_6
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialObjectPerWaterfall:Z

    if-eqz v1, :cond_8

    .line 2087
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    if-nez v1, :cond_7

    .line 2091
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    goto :goto_1

    .line 2093
    :cond_7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->loadAd()V

    goto :goto_1

    .line 2097
    :cond_8
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-nez v1, :cond_9

    .line 2101
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    goto :goto_1

    .line 2103
    :cond_9
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2108
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2109
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x1fe

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_1
    return-void
.end method

.method public loadRewardedVideo()V
    .locals 5

    const-string v0, "loadRewardedVideo()"

    .line 1598
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1601
    :try_start_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    const-string v1, "Rewarded Video was initialized in demand only mode. Use loadISDemandOnlyRewardedVideo instead"

    .line 1603
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1604
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v4, "Rewarded Video"

    invoke-static {v1, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1608
    :cond_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    if-nez v1, :cond_1

    const-string v1, "Rewarded Video is not initiated with manual load"

    .line 1610
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1614
    :cond_1
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    if-nez v1, :cond_2

    const-string v1, "init() must be called before loadRewardedVideo()"

    .line 1616
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1617
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v4, "Rewarded Video"

    invoke-static {v1, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1621
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v1

    .line 1623
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v4, :cond_3

    .line 1624
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() had failed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1625
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "init() had failed"

    const-string v4, "Rewarded Video"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1629
    :cond_3
    sget-object v4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v4, :cond_5

    .line 1630
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1631
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "init() had failed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1632
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "init() had failed"

    const-string v4, "Rewarded Video"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1634
    :cond_4
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoLoadBeforeInitCompleted:Z

    :goto_0
    return-void

    .line 1640
    :cond_5
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigured()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1641
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "No rewarded video configurations found"

    invoke-virtual {v1, v3, v4, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1642
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "the server response does not contain rewarded video data"

    const-string v4, "Rewarded Video"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 1646
    :cond_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    if-nez v1, :cond_7

    .line 1650
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoLoadBeforeInitCompleted:Z

    goto :goto_1

    .line 1652
    :cond_7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1656
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1657
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x1fe

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_1
    return-void
.end method

.method public onInitFailed(Ljava/lang/String;)V
    .locals 4

    .line 1228
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitFailed(reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string p1, "Mediation init failed"

    .line 1229
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 1231
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz p1, :cond_0

    .line 1232
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 1233
    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1237
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onInitSuccess(Ljava/util/List;ZLcom/ironsource/mediationsdk/model/Configurations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z",
            "Lcom/ironsource/mediationsdk/model/Configurations;",
            ")V"
        }
    .end annotation

    .line 661
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 663
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitiatedAdUnits:Ljava/util/List;

    const/4 p3, 0x1

    .line 664
    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitSucceeded:Z

    .line 665
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onInitSuccess()"

    invoke-virtual {v0, v1, v2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const-string v0, "init success"

    .line 666
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 670
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "revived"

    .line 672
    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 674
    :try_start_2
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 676
    :goto_0
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x72

    invoke-direct {p3, v1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 677
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 681
    :cond_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendScreenSizeEvent(Landroid/app/Activity;)V

    .line 684
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->triggerEventsSend()V

    .line 685
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->triggerEventsSend()V

    .line 686
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setInitParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p2

    array-length p3, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_3

    aget-object v2, p2, v1

    .line 691
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 693
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->startAdUnit(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    goto :goto_2

    .line 697
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 702
    :cond_3
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->reportInitSuccessIfNeeded()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 704
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "onPause()"

    .line 1399
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1402
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/environment/ContextProvider;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1406
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "onResume()"

    .line 1384
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1387
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/environment/ContextProvider;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1391
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onStillInProgressAfter15Secs()V
    .locals 7

    .line 1243
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    monitor-enter v0

    .line 1244
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1245
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsBnLoadBeforeInitCompleted:Ljava/lang/Boolean;

    .line 1246
    invoke-static {}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/BannerCallbackThrottler;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x25b

    const-string v6, "init had failed"

    invoke-direct {v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/ironsource/mediationsdk/BannerCallbackThrottler;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 v1, 0x0

    .line 1247
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnLayoutToLoad:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 1248
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBnPlacementToLoad:Ljava/lang/String;

    .line 1250
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1252
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_1

    .line 1253
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialLoadBeforeInitCompleted:Z

    .line 1254
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v3, "init() had failed"

    const-string v4, "Interstitial"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1257
    :cond_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoLoadBeforeInitCompleted:Z

    if-eqz v0, :cond_2

    .line 1258
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoLoadBeforeInitCompleted:Z

    .line 1259
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v2, "init() had failed"

    const-string v3, "Rewarded Video"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1262
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v1

    .line 1263
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1264
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v3

    const-string v4, "init() had failed"

    const-string v5, "Interstitial"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1266
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 1267
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1269
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    monitor-enter v0

    .line 1270
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1271
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v3

    const-string v4, "init() had failed"

    const-string v5, "Rewarded Video"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_1

    .line 1273
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvLoadBeforeInitCompleted:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 1274
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 1267
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 1250
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :goto_2
    nop

    goto :goto_2
.end method

.method public removeAllImpressionDataListeners()V
    .locals 2

    .line 3819
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "removing all impression data listeners"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 3820
    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->removeAllImpressionDataListeners()V

    .line 3823
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v0, :cond_0

    .line 3824
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/IProgRvManager;->removeAllImpressionDataListeners()V

    .line 3826
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v0, :cond_1

    .line 3827
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->removeAllImpressionDataListeners()V

    .line 3829
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    if-eqz v0, :cond_2

    .line 3830
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->removeAllImpressionDataListeners()V

    .line 3832
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    if-eqz v0, :cond_3

    .line 3833
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->removeAllImpressionDataListeners()V

    .line 3835
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    if-eqz v0, :cond_4

    .line 3836
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgBannerManager;->removeAllImpressionDataListeners()V

    :cond_4
    return-void
.end method

.method public removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .locals 3
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "removeImpressionDataListener - listener is null"

    .line 3792
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3795
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3798
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v0, :cond_1

    .line 3799
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/IProgRvManager;->removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3801
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v0, :cond_2

    .line 3802
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3804
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    if-eqz v0, :cond_3

    .line 3805
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3807
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    if-eqz v0, :cond_4

    .line 3808
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3810
    :cond_4
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    if-eqz v0, :cond_5

    .line 3811
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 3814
    :cond_5
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove impression data listener from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public removeInterstitialListener()V
    .locals 4

    const-string v0, "removeInterstitialListener()"

    .line 3126
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 3128
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 3129
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 3130
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V

    return-void
.end method

.method public removeOfferwallListener()V
    .locals 4

    const-string v0, "removeOfferwallListener()"

    .line 3136
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 3138
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public removeRewardedVideoListener()V
    .locals 4

    const-string v0, "removeRewardedVideoListener()"

    .line 3115
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 3117
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 3118
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 3119
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;)V

    return-void
.end method

.method public sendInitCompletedEvent(J)V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isDemandOnlyInit()Z

    move-result v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "duration"

    .line 242
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "sessionDepth"

    .line 243
    iget p2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInitCounter:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    :goto_0
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const/16 p2, 0x202

    invoke-direct {p1, p2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 249
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method public setAdRevenueData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "setAdRevenueData - impressionData is null"

    .line 3842
    invoke-static {p2, v0}, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setAdRevenueData - dataSource is null"

    .line 3843
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3844
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mExternalImpressionDataHandler:Lcom/ironsource/mediationsdk/impressionData/ExternalImpressionDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/impressionData/ExternalImpressionDataHandler;->setAdRevenueData(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public setAdaptersDebug(Z)V
    .locals 4

    .line 1492
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdaptersDebug : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1493
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setAdaptersDebug(Z)V

    return-void
.end method

.method public setConsent(Z)V
    .locals 5

    .line 3514
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mConsent:Ljava/lang/Boolean;

    .line 3515
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConsent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 3517
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setConsent(Z)V

    .line 3520
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 3521
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offerwall | setConsent(consent:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 3522
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V

    :cond_0
    const/16 v0, 0x28

    if-nez p1, :cond_1

    const/16 v0, 0x29

    .line 3530
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setConsent(Z)V

    const/4 p1, 0x0

    .line 3532
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 3533
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 3534
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method public setDynamicUserId(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1465
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":setDynamicUserId(dynamicUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1466
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1468
    new-instance v1, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1470
    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 1472
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1473
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    .line 1475
    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForUserId(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 1476
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x34

    invoke-direct {v2, v3, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1477
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return v4

    .line 1480
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1485
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":setDynamicUserId(dynamicUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V
    .locals 1

    .line 2436
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    return-void
.end method

.method setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V
    .locals 1

    .line 1985
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    return-void
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2287
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setInterstitialListener(ISListener:null)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 2289
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setInterstitialListener(ISListener)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2292
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 2293
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method setIronSourceUserId(Ljava/lang/String;Z)V
    .locals 3

    .line 3142
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isFromPublisher = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3143
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3146
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForUserId(Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 3147
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v0, 0x34

    invoke-direct {p2, v0, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 3148
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    :cond_0
    return-void
.end method

.method public setLevelPlayInterstitialListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2299
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "ISListener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 2301
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    .line 2304
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V

    return-void
.end method

.method public setLevelPlayRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1826
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "RVListener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 1828
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    .line 1831
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;)V

    return-void
.end method

.method public declared-synchronized setLevelPlayRewardedVideoManualListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoManualListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1542
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "RVListener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1544
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    .line 1547
    :goto_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1549
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    .line 1550
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Disabling rewarded video manual mode"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1552
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    .line 1553
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Enabling rewarded video manual mode"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 1558
    :cond_2
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->setLevelPlayListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    monitor-exit p0

    return-void

    .line 1540
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2591
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setLogListener(LogListener:null)"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 2593
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 2594
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLogListener(LogListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public declared-synchronized setManualLoadRewardedVideo(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManualListener;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1520
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "RVListener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1522
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    .line 1525
    :goto_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDidInitRewardedVideo:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1527
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    .line 1528
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Disabling rewarded video manual mode"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1530
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRewardedVideoManual:Z

    .line 1531
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Enabling rewarded video manual mode"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 1536
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 1537
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    monitor-exit p0

    return-void

    .line 1518
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 5

    .line 1413
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setMediationSegment(segment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1414
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1416
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1418
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 1420
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationSegment:Ljava/lang/String;

    goto :goto_0

    .line 1423
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1426
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":setMediationSegment(segment:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMediationType(Ljava/lang/String;)V
    .locals 5

    .line 1500
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setMediationType(mediationType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1501
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v0, 0x40

    .line 1504
    invoke-direct {p0, p1, v3, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length"

    .line 1509
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1513
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":setMediationType(mediationType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3555
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3556
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->checkMetaDataKeyValidity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3557
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->checkMetaDataValueValidity(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 3559
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 3560
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 3564
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3565
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 3569
    :cond_1
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatMetaData(Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/mediationsdk/metadata/MetaData;

    move-result-object v0

    .line 3570
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/metadata/MetaData;->getMetaDataKey()Ljava/lang/String;

    move-result-object v1

    .line 3571
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/metadata/MetaData;->getMetaDataValue()Ljava/util/List;

    move-result-object v0

    .line 3573
    invoke-static {v1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isMediationOnlyKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3574
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v2, v3, :cond_2

    .line 3575
    invoke-static {v1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isMediationKeysBeforeInit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3576
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMetaData with key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must to be called before init"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 3578
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->setMetaData(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 3581
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/ironsource/mediationsdk/AdapterRepository;->setMetaData(Ljava/lang/String;Ljava/util/List;)V

    .line 3586
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->getMetaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 3587
    invoke-static {}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getInstance()Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronsourceObjectPublisherDataHolder;->getMediationMetaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3589
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3590
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3591
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 3593
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setMetaData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 3595
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got the following error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3600
    :goto_2
    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getJsonForMetaData(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3601
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne p2, v0, :cond_5

    const/16 p2, 0x33

    goto :goto_3

    :cond_5
    const/16 p2, 0x32

    .line 3602
    :goto_3
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v0, p2, p1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 3603
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method public setNetworkData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 3609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " networkData = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3611
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3612
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/AdapterRepository;->setNetworkData(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2579
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setOfferwallListener(OWListener:null)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 2581
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setOfferwallListener(OWListener)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2584
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1813
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setRewardedVideoListener(RVListener:null)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 1815
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "setRewardedVideoListener(RVListener)"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1819
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 1820
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->setListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    return-void
.end method

.method public setRewardedVideoServerParameters(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1837
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1841
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":setRewardedVideoServerParameters(params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1842
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1843
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRvServerParams:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1845
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":setRewardedVideoServerParameters(params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 1

    .line 1432
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    .line 1436
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdManager:Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/RewardedVideoAdManager;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/IProgRvManager;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    if-eqz v0, :cond_2

    .line 1444
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 1446
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v0, :cond_3

    .line 1447
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 1451
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    if-eqz v0, :cond_4

    .line 1452
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgBannerManager:Lcom/ironsource/mediationsdk/ProgBannerManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ProgBannerManager;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 1456
    :cond_4
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 1457
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 1458
    sget-object p1, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .locals 1

    .line 3476
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz v0, :cond_0

    .line 3477
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 3478
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    :cond_0
    return-void
.end method

.method public shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 1

    .line 3260
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mTrackNetworkStateContext:Landroid/content/Context;

    .line 3261
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldTrackNetworkState:Ljava/lang/Boolean;

    .line 3264
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    if-eqz v0, :cond_1

    .line 3265
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialObjectPerWaterfall:Z

    if-eqz v0, :cond_0

    .line 3266
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    if-eqz v0, :cond_2

    .line 3267
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdManager:Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/adunit/manager/InterstitialAdManager;->shouldTrackNetworkState(Z)V

    goto :goto_0

    .line 3269
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    if-eqz v0, :cond_2

    .line 3270
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgIsManager:Lcom/ironsource/mediationsdk/ProgIsManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    goto :goto_0

    .line 3273
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v0, :cond_2

    .line 3274
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 3279
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v0, :cond_3

    .line 3280
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    if-eqz v0, :cond_4

    .line 3281
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mProgRvManager:Lcom/ironsource/mediationsdk/IProgRvManager;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/IProgRvManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    goto :goto_1

    .line 3284
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v0, :cond_4

    .line 3285
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public showDemandOnlyInterstitial(Ljava/lang/String;)V
    .locals 4

    .line 2409
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showISDemandOnlyInterstitial() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2412
    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Interstitial was initialized in mediation mode. Use showInterstitial instead"

    invoke-virtual {v0, v2, v3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 2417
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    if-nez v0, :cond_1

    const-string v0, "Interstitial video was not initiated"

    .line 2419
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2420
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fc

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2424
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyIsManager:Lcom/ironsource/mediationsdk/DemandOnlyIsManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->showInterstitial(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2426
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showISDemandOnlyInterstitial"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2427
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    const-string v1, "showISDemandOnlyInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized showDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1956
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showISDemandOnlyRewardedVideo() instanceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1959
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    const/16 v1, 0x1fc

    const/4 v2, 0x3

    if-nez v0, :cond_0

    const-string v0, "Rewarded video was initialized in mediation mode. Use showRewardedVideo instead"

    .line 1961
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1962
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1963
    monitor-exit p0

    return-void

    .line 1966
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    if-nez v0, :cond_1

    const-string v0, "Rewarded video was not initiated"

    .line 1968
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1969
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1970
    monitor-exit p0

    return-void

    .line 1973
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDemandOnlyRvManager:Lcom/ironsource/mediationsdk/DemandOnlyRvManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1975
    :try_start_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showISDemandOnlyRewardedVideo"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1976
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v1

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fe

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1978
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1955
    monitor-exit p0

    throw p1
.end method

.method public showInterstitial()V
    .locals 7

    const-string v0, "showInterstitial()"

    .line 2115
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v1, 0x1fe

    const/4 v2, 0x0

    .line 2118
    :try_start_0
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v3, :cond_0

    const-string v3, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    .line 2120
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v3, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2121
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v4

    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v5, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5, v2}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    .line 2125
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2126
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v3

    const-string v4, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v5, "Interstitial"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    .line 2130
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2132
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 2133
    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 2135
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v3

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x3fc

    const-string v6, "showInterstitial error: empty default placement in response"

    invoke-direct {v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 2138
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2139
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :goto_0
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 6

    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInterstitial("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2146
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v1, 0x1fe

    const/4 v2, 0x0

    .line 2149
    :try_start_0
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyIs:Z

    if-eqz v3, :cond_0

    const-string p1, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"

    .line 2151
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, p1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2152
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v3

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v4, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    .line 2156
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2157
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    const-string v3, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v4, "Interstitial"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    .line 2161
    :cond_1
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsInterstitialProgrammatic:Z

    if-eqz v3, :cond_2

    .line 2162
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showProgrammaticInterstitial(Ljava/lang/String;)V

    return-void

    .line 2166
    :cond_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v3

    const/4 v4, 0x0

    .line 2168
    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    :try_start_1
    const-string p1, "placement"

    .line 2171
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2172
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "placement"

    .line 2173
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2176
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2179
    :cond_4
    :goto_1
    new-instance p1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0x834

    invoke-direct {p1, v5, v4}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 2180
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    if-eqz v3, :cond_5

    .line 2183
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {p1, v3}, Lcom/ironsource/mediationsdk/InterstitialManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 2184
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ironsource/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2188
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2189
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public showOfferwall()V
    .locals 4

    const-string v0, "showOfferwall()"

    .line 2501
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2503
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2504
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v2, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v3, "Offerwall"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2508
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2510
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 2511
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2514
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2515
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v1, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v2, "Offerwall"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .locals 4

    .line 2521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showOfferwall("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2522
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2524
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2525
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v1, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v2, "Offerwall"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 2529
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferwallPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 2532
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 2535
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mCurrentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Default placement was not found, please make sure you are using the right placements."

    .line 2538
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 2543
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/OfferwallManager;->showOfferwall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2545
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2546
    iget-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v0, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v1, "Offerwall"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_0
    return-void
.end method

.method public showRewardedVideo()V
    .locals 5

    .line 1663
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    .line 1665
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v3

    const-string v4, "Rewarded Video"

    invoke-static {v0, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 1666
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 1670
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "showRewardedVideo error: empty default placement in response"

    .line 1674
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1675
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x3fd

    invoke-direct {v1, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1676
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    goto :goto_0

    .line 1678
    :cond_1
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 5

    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRewardedVideo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1742
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 1745
    :try_start_0
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsDemandOnlyRv:Z

    if-eqz v2, :cond_0

    const-string p1, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead"

    .line 1747
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, p1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1748
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v2

    const-string v3, "Rewarded Video"

    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    .line 1752
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1753
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    const-string v2, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v3, "Rewarded Video"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void

    .line 1757
    :cond_1
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIsRvProgrammatic:Z

    if-eqz v2, :cond_2

    .line 1758
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showProgrammaticRewardedVideo(Ljava/lang/String;)V

    return-void

    .line 1762
    :cond_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getPlacementToShowWithEvent(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1764
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setCurrentPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 1765
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1768
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1769
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fe

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    :cond_3
    :goto_0
    return-void
.end method
