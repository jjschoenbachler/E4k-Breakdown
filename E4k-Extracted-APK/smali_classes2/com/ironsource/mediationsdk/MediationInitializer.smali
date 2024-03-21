.class Lcom/ironsource/mediationsdk/MediationInitializer;
.super Ljava/lang/Object;
.source "MediationInitializer.java"

# interfaces
.implements Lcom/ironsource/environment/NetworkStateReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;,
        Lcom/ironsource/mediationsdk/MediationInitializer$EInitType;,
        Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;


# instance fields
.field private final GENERAL_PROPERTIES_APP_KEY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

.field private mAppKey:Ljava/lang/String;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mDidReportInitialAvailability:Z

.field private mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitStartTime:J

.field private mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field private mInitType:I

.field private mIsInProgressMoreThan15Secs:Z

.field private mIsRevived:Z

.field private mListenForInit:Z

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mOnMediationInitializationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryAvailabilityLimit:I

.field private mRetryCounter:I

.field private mRetryDelay:I

.field private mRetryGrowLimit:I

.field private mRetryLimit:I

.field private mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

.field private mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

.field private mUserId:Ljava/lang/String;

.field private mUserIdType:Ljava/lang/String;

.field private sessionCalcManager:Lcom/ironsource/mediationsdk/SessionCalculationManager;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitType;->INIT_TYPE_NOT_INIT:I

    iput v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitType:I

    const-string v0, "appKey"

    .line 143
    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->GENERAL_PROPERTIES_APP_KEY:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z

    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 158
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    .line 182
    new-instance v1, Lcom/ironsource/mediationsdk/MediationInitializer$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/MediationInitializer$1;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    .line 117
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    iput-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    .line 118
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "IronSourceInitiatorHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 119
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 122
    iput v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I

    .line 123
    iput v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    const/16 v2, 0x3e

    .line 124
    iput v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryLimit:I

    const/16 v2, 0xc

    .line 125
    iput v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryGrowLimit:I

    const/4 v2, 0x5

    .line 126
    iput v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryAvailabilityLimit:I

    .line 128
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    .line 130
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsInProgressMoreThan15Secs:Z

    .line 131
    new-instance v0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->validateUserId(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/MediationInitializer;->wasInitRevived()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/mediationsdk/MediationInitializer;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    return p0
.end method

.method static synthetic access$1408(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 2

    .line 44
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    return v0
.end method

.method static synthetic access$1502(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsInProgressMoreThan15Secs:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryLimit:I

    return p0
.end method

.method static synthetic access$1702(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I

    return p0
.end method

.method static synthetic access$1802(Lcom/ironsource/mediationsdk/MediationInitializer;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I

    return p1
.end method

.method static synthetic access$1900(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryGrowLimit:I

    return p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryAvailabilityLimit:I

    return p0
.end method

.method static synthetic access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/ironsource/mediationsdk/MediationInitializer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStartTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/ironsource/mediationsdk/MediationInitializer;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStartTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/SessionCalculationManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->sessionCalcManager:Lcom/ironsource/mediationsdk/SessionCalculationManager;

    return-object p0
.end method

.method static synthetic access$902(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/SessionCalculationManager;)Lcom/ironsource/mediationsdk/SessionCalculationManager;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->sessionCalcManager:Lcom/ironsource/mediationsdk/SessionCalculationManager;

    return-object p1
.end method

.method private static calculateInitType(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)I
    .locals 1

    .line 78
    sget-object v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->CACHE:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    if-ne p0, v0, :cond_0

    .line 79
    sget p0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitType;->INIT_TYPE_FROM_CACHE:I

    return p0

    .line 81
    :cond_0
    sget-object p0, Lcom/ironsource/mediationsdk/MediationInitializer$3;->$SwitchMap$com$ironsource$mediationsdk$MediationInitializer$EInitStatus:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    .line 89
    sget p0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitType;->INIT_TYPE_UNKNOWN:I

    return p0

    .line 87
    :pswitch_0
    sget p0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitType;->INIT_TYPE_FROM_SERVER:I

    return p0

    .line 85
    :pswitch_1
    sget p0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitType;->INIT_TYPE_NOT_INIT:I

    return p0

    .line 83
    :pswitch_2
    sget p0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitType;->INIT_TYPE_INIT_IN_PROGRESS:I

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/MediationInitializer;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer;->sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/MediationInitializer;->sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;

    .line 112
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer;->sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 108
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    .locals 3

    monitor-enter p0

    .line 178
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 177
    monitor-exit p0

    throw p1
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 489
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private validateUserId(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 3

    .line 467
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0x40

    .line 470
    invoke-direct {p0, p1, v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->validateLength(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "userId"

    const/4 v2, 0x0

    .line 471
    invoke-static {v1, p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 473
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    :cond_0
    const-string v1, "userId"

    const-string v2, "it\'s missing"

    .line 476
    invoke-static {v1, p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    .line 478
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private wasInitRevived()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    return v0
.end method


# virtual methods
.method public addMediationInitializationListener(Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    .locals 1

    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInitType()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitType:I

    return v0
.end method

.method public identifyMediationType(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 442
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 446
    :cond_1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getExternalSettings()Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;->getMediationTypes()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 447
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->doesClassExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p1, v1

    .line 459
    :cond_4
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->setMediationType(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method public varargs declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 2

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object p4, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p4, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 338
    sget-object p4, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-direct {p0, p4}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 339
    iput-object p3, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;

    .line 342
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 344
    iget-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 346
    :cond_0
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    .line 347
    iget-object p2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_1

    .line 348
    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiverListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 350
    :cond_1
    iget-object p2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance p2, Lcom/ironsource/mediationsdk/MediationInitializer$2;

    invoke-direct {p2, p0}, Lcom/ironsource/mediationsdk/MediationInitializer$2;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postBackgroundTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->TAG:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Multiple calls to init are not allowed"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 386
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isInProgressMoreThan15Secs()Z
    .locals 1

    monitor-enter p0

    .line 415
    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsInProgressMoreThan15Secs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 393
    iget-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 394
    iget-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 396
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    .line 398
    iget-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public removeMediationInitializationListener(Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method setInitStatusFailed()V
    .locals 1

    .line 411
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    return-void
.end method

.method public declared-synchronized setInitType(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getOrigin(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->calculateInitType(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitType:I

    .line 136
    iget-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitType:I

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setInitType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 134
    monitor-exit p0

    throw p1
.end method

.method public setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    return-void
.end method

.method public updateDataWithInitResponse(Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getInitialConfiguration()Lcom/ironsource/mediationsdk/InitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/InitConfig;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setUserId(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getInitialConfiguration()Lcom/ironsource/mediationsdk/InitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/InitConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setAppKey(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object p2

    .line 60
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getAuctionSettings()Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;->getAuctionData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setAuctionData(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getTokenSettings()Lcom/ironsource/mediationsdk/utils/TokenSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->getGenericParams()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setTokenGenericParams(Lorg/json/JSONObject;)V

    .line 62
    iget-object p2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mGlobalDataWriter:Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getFirstSession(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setFirstSession(Ljava/lang/Boolean;)V

    return-void
.end method
