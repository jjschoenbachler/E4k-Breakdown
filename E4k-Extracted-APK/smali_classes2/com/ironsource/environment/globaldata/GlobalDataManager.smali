.class public Lcom/ironsource/environment/globaldata/GlobalDataManager;
.super Ljava/lang/Object;
.source "GlobalDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/environment/globaldata/GlobalDataManager$GlobalDataManagerLoader;
    }
.end annotation


# instance fields
.field private mGlobalData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPermanentDataSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsUpdatingAdvertiserId:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mIsUpdatingAdvertiserId:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mIsPermanentDataSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mGlobalData:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/environment/globaldata/GlobalDataManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/environment/globaldata/GlobalDataManager;Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->updateAdvertiserIdData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/environment/globaldata/GlobalDataManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mIsUpdatingAdvertiserId:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private collectAdvertisingID(Landroid/content/Context;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mIsUpdatingAdvertiserId:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 280
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mIsUpdatingAdvertiserId:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 281
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/environment/globaldata/GlobalDataManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager$1;-><init>(Lcom/ironsource/environment/globaldata/GlobalDataManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    iget-object p1, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mIsUpdatingAdvertiserId:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method private containsKey(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 124
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mGlobalData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static getInstance()Lcom/ironsource/environment/globaldata/GlobalDataManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/ironsource/environment/globaldata/GlobalDataManager$GlobalDataManagerLoader;->mInstance:Lcom/ironsource/environment/globaldata/GlobalDataManager;

    return-object v0
.end method

.method private put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    :try_start_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mGlobalData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private remove(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mGlobalData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setPermanentData(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mIsPermanentDataSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "auid"

    .line 156
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getAppUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "model"

    .line 157
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "make"

    .line 158
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOEM()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "os"

    .line 159
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOs()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getAndroidOsVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "[^0-9/.]"

    const-string v2, ""

    .line 164
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "osv"

    .line 165
    invoke-direct {p0, v2, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "osvf"

    .line 166
    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v0, "apilvl"

    .line 169
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getAndroidAPIVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "carrier"

    .line 174
    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    :cond_3
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "instlr"

    .line 179
    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    :cond_4
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "dt"

    .line 184
    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string v0, "bid"

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mem"

    .line 188
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getTotalDeviceRAM(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tkv"

    const-string v1, "2.0"

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tsu"

    .line 190
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tai"

    .line 191
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "apv"

    .line 192
    invoke-static {p1}, Lcom/ironsource/environment/ApplicationContext;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ptype"

    .line 193
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getPhoneType(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "simop"

    .line 194
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private updateAdvertiserIdData(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 304
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->usedAdvertisingId(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 305
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 307
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 308
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gaid"

    .line 310
    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lat"

    .line 311
    invoke-direct {p0, v0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private updateMutableData(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->collectAdvertisingID(Landroid/content/Context;)V

    .line 205
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->usedVendorId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "asid"

    .line 207
    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "asid"

    .line 209
    invoke-direct {p0, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "asid"

    .line 210
    invoke-direct {p0, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->remove(Ljava/lang/String;)V

    .line 215
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "lang"

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_3
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceTimeZoneId()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "tz"

    .line 223
    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    :cond_4
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "connt"

    .line 229
    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    const-string v0, "vpn"

    .line 234
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->hasVPN(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    :cond_6
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getMobileCountryCodeISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "icc"

    .line 240
    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    const-string v0, "vol"

    .line 243
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getSystemVolumePercent(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dfs"

    .line 244
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getAvailableInternalMemorySizeInMegaBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "scrnw"

    .line 245
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDisplayWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "scrnh"

    .line 246
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDisplayHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ltime"

    .line 247
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceLocalTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tzoff"

    .line 248
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceTimeZoneOffsetInMinutes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mcc"

    .line 249
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getNetworkMCC(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mnc"

    .line 250
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityService;->getNetworkMNC(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "sdcrd"

    .line 251
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isExternalMemoryAvailableWritable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "chrg"

    .line 252
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->isCharging(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "chrgt"

    .line 253
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->chargingType(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "apm"

    .line 254
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "owp"

    .line 255
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->isStayOnWhenPluggedIn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "rt"

    .line 256
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isRootedDevice()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "sscl"

    .line 257
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceDensity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bat"

    .line 258
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getBatteryLevel(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lpm"

    .line 259
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "apor"

    .line 260
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientationString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ua"

    .line 261
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getBrowserUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getGdprApplies(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_8

    const-string v1, "tca"

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    :cond_8
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getTCString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "tcs"

    .line 270
    invoke-direct {p0, v0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected extendData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mGlobalData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 78
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    .line 79
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected getAllData(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->updateMutableData(Landroid/content/Context;)V

    .line 134
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager;->mGlobalData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/ironsource/environment/globaldata/GlobalDataUtils;->copyHashMap(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method protected setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected setData(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public setInitialData(Landroid/content/Context;)V
    .locals 0

    .line 140
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->setPermanentData(Landroid/content/Context;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->updateMutableData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
