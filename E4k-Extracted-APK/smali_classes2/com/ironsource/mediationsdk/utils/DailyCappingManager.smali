.class public Lcom/ironsource/mediationsdk/utils/DailyCappingManager;
.super Ljava/lang/Object;
.source "DailyCappingManager.java"


# static fields
.field private static final RAND_MINUTES:I = 0xa


# instance fields
.field private mAdUnitName:Ljava/lang/String;

.field private mListener:Lcom/ironsource/mediationsdk/utils/DailyCappingListener;

.field private mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mSmashIdToCounter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSmashIdToCounterDate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmashIdToMaxShowsPerDay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/DailyCappingListener;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    .line 38
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mAdUnitName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mListener:Lcom/ironsource/mediationsdk/utils/DailyCappingListener;

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 44
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->scheduleTimer()V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/utils/DailyCappingManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->onTimerTick()V

    return-void
.end method

.method private getCounter(Ljava/lang/String;)I
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 191
    :cond_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private getCounterDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 180
    :cond_0
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getDayKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getStringFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getCounterKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_counter"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDayKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_day"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTodayDate()Ljava/lang/String;
    .locals 3

    .line 235
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 236
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 237
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTodayShowCount(Ljava/lang/String;)I
    .locals 2

    .line 167
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->zeroCounter(Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounter(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mAdUnitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUtcMidnight()Ljava/util/Date;
    .locals 4

    .line 154
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 155
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 156
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xa

    .line 157
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x3c

    .line 158
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x3e8

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    const/4 v2, 0x1

    .line 160
    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 161
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private onTimerTick()V
    .locals 4

    .line 122
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->zeroCounter(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mListener:Lcom/ironsource/mediationsdk/utils/DailyCappingListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/utils/DailyCappingListener;->onDailyCapReleased()V

    .line 129
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->scheduleTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 131
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "onTimerTick"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_3
    nop

    goto :goto_3
.end method

.method private saveCounter(Ljava/lang/String;I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 202
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getDayKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private scheduleTimer()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 142
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    .line 143
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager$1;-><init>(Lcom/ironsource/mediationsdk/utils/DailyCappingManager;)V

    .line 148
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUtcMidnight()Ljava/util/Date;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    return-void
.end method

.method private zeroCounter(Ljava/lang/String;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounter:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToCounterDate:Ljava/util/Map;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 211
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getDayKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSmash(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    .locals 3

    .line 50
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerDay()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMaxAdsPerDay()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "addSmash"

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public increaseShowCounter(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    .locals 3

    .line 64
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 68
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 71
    :cond_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayShowCount(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->saveCounter(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 74
    :try_start_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "increaseShowCounter"

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z
    .locals 4

    .line 104
    monitor-enter p0

    const/4 v0, 0x0

    .line 106
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    .line 111
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayShowCount(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gt v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :try_start_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "isCapped"

    invoke-virtual {v1, v2, v3, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    monitor-exit p0

    return v0

    .line 116
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public shouldSendCapReleasedEvent(Lcom/ironsource/mediationsdk/AbstractSmash;)Z
    .locals 4

    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getUniqueId(Lcom/ironsource/mediationsdk/AbstractSmash;)Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 86
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    .line 89
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getTodayDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounterDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 90
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0

    .line 93
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mSmashIdToMaxShowsPerDay:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->getCounter(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gt v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :try_start_5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->mLogger:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "shouldSendCapReleasedEvent"

    invoke-virtual {v1, v2, v3, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    monitor-exit p0

    return v0

    .line 98
    :goto_0
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method
