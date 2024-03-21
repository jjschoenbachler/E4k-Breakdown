.class public Lcom/ironsource/environment/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/environment/CrashReporter$CrashReporterHolder;
    }
.end annotation


# static fields
.field public static ANRFinalStack:Ljava/lang/String; = ""

.field private static final CRASH_REPORTER_VERSION:Ljava/lang/String; = "1.0.5"


# instance fields
.field private crashKeyword:Ljava/lang/String;

.field private crashReporterURL:Ljava/lang/String;

.field private isANR:Ljava/lang/String;

.field private isOptOutEnabled:Z

.field private mAdvertisingId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCrashReport:Lorg/json/JSONObject;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/ironsource/environment/CrashReporter;->isOptOutEnabled:Z

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/environment/CrashReporter;->mCrashReport:Lorg/json/JSONObject;

    .line 52
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/environment/CrashReporter;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    const-string v0, " "

    .line 53
    iput-object v0, p0, Lcom/ironsource/environment/CrashReporter;->crashKeyword:Ljava/lang/String;

    const-string v0, "https://outcome-crash-report.supersonicads.com/reporter"

    .line 54
    iput-object v0, p0, Lcom/ironsource/environment/CrashReporter;->crashReporterURL:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/ironsource/environment/CrashHandler;

    iget-object v1, p0, Lcom/ironsource/environment/CrashReporter;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {v0, v1}, Lcom/ironsource/environment/CrashHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/environment/CrashReporter$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ironsource/environment/CrashReporter;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/environment/CrashReporter;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ironsource/environment/CrashReporter;->mAdvertisingId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ironsource/environment/CrashReporter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ironsource/environment/CrashReporter;->mAdvertisingId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ironsource/environment/CrashReporter;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/ironsource/environment/CrashReporter;->isOptOutEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ironsource/environment/CrashReporter;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ironsource/environment/CrashReporter;->crashReporterURL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/environment/CrashReporter;)Lorg/json/JSONObject;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ironsource/environment/CrashReporter;->mCrashReport:Lorg/json/JSONObject;

    return-object p0
.end method

.method private getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "none"

    return-object p1

    :cond_0
    const-string v0, "connectivity"

    .line 260
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_1

    const-string p1, "none"

    return-object p1

    .line 266
    :cond_1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 267
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 268
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "none"

    return-object p1

    :cond_2
    const/4 v0, 0x1

    .line 272
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "wifi"

    return-object p1

    :cond_3
    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "cellular"

    return-object p1

    .line 278
    :cond_4
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 279
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "wifi"

    return-object p1

    .line 282
    :cond_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MOBILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "cellular"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_6
    const-string p1, "none"

    return-object p1

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "none"

    return-object p1
.end method

.method static getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/environment/ExceptionLog;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/ironsource/environment/CrashReporter;
    .locals 1

    .line 42
    sget-object v0, Lcom/ironsource/environment/CrashReporter$CrashReporterHolder;->INSTANCE:Lcom/ironsource/environment/CrashReporter;

    return-object v0
.end method

.method private sendExceptions(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/ironsource/environment/CrashReporter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/environment/CrashReporter;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CRep"

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "String1"

    .line 142
    iget-object v3, p0, Lcom/ironsource/environment/CrashReporter;->mAdvertisingId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sId"

    .line 143
    iget-object v4, p0, Lcom/ironsource/environment/CrashReporter;->mSessionId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    invoke-static {}, Lcom/ironsource/environment/DbHandler;->getAllReports()Ljava/util/List;

    move-result-object v3

    .line 147
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/environment/ExceptionLog;

    .line 149
    invoke-virtual {v4}, Lcom/ironsource/environment/ExceptionLog;->getDate()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {v4}, Lcom/ironsource/environment/ExceptionLog;->getStacktrace()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-virtual {v4}, Lcom/ironsource/environment/ExceptionLog;->getIsAnr()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 154
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v9, "crashDate"

    .line 157
    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "stacktraceCrash"

    .line 158
    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "crashType"

    .line 159
    invoke-virtual {v8, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "CrashReporterVersion"

    const-string v5, "1.0.5"

    .line 160
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "SDKVersion"

    const-string v5, "7.2.3.1"

    .line 161
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceLanguage"

    .line 162
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getDeviceLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "appVersion"

    .line 163
    invoke-static {p1, v7}, Lcom/ironsource/environment/ApplicationContext;->getPublisherApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceOSVersion"

    .line 164
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getAndroidOsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "network"

    .line 165
    invoke-virtual {v8, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceApiLevel"

    .line 166
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getAndroidAPIVersion()I

    move-result v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "deviceModel"

    .line 167
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "deviceOS"

    .line 168
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOs()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "advertisingId"

    .line 169
    invoke-virtual {v8, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "isLimitAdTrackingEnabled"

    .line 170
    iget-boolean v5, p0, Lcom/ironsource/environment/CrashReporter;->isOptOutEnabled:Z

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "deviceOEM"

    .line 171
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOEM()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "systemProperties"

    .line 172
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "bundleId"

    .line 173
    invoke-virtual {v8, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sId"

    .line 174
    invoke-virtual {v8, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 180
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 181
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :try_start_1
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 187
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-object v4, v8

    .line 194
    :cond_2
    iput-object v4, p0, Lcom/ironsource/environment/CrashReporter;->mCrashReport:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    :catch_1
    iget-object v4, p0, Lcom/ironsource/environment/CrashReporter;->mCrashReport:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ISCrashReport"

    const-string v5, " Is Empty"

    .line 200
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    :cond_3
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/ironsource/environment/CrashReporter$3;

    invoke-direct {v5, p0}, Lcom/ironsource/environment/CrashReporter$3;-><init>(Lcom/ironsource/environment/CrashReporter;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 235
    invoke-static {}, Lcom/ironsource/environment/DbHandler;->deleteAllReports()V

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/ironsource/environment/CrashReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCrashReporterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.5"

    return-object v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ironsource/environment/CrashReporter;->crashKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "automation_log"

    const-string v1, "init ISCrashReporter"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/ironsource/environment/CrashReporter;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iput-object p4, p0, Lcom/ironsource/environment/CrashReporter;->crashKeyword:Ljava/lang/String;

    .line 69
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 70
    iput-object p3, p0, Lcom/ironsource/environment/CrashReporter;->crashReporterURL:Ljava/lang/String;

    .line 73
    :cond_1
    iput-object p6, p0, Lcom/ironsource/environment/CrashReporter;->mSessionId:Ljava/lang/String;

    if-eqz p5, :cond_2

    .line 76
    new-instance p3, Lcom/ironsource/environment/ANRHandler;

    invoke-direct {p3, p7}, Lcom/ironsource/environment/ANRHandler;-><init>(I)V

    invoke-virtual {p3, p8}, Lcom/ironsource/environment/ANRHandler;->setIgnoreDebugger(Z)Lcom/ironsource/environment/ANRHandler;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/ironsource/environment/ANRHandler;->setLogThreadsWithoutStackTrace(Z)Lcom/ironsource/environment/ANRHandler;

    move-result-object p3

    new-instance p4, Lcom/ironsource/environment/CrashReporter$1;

    invoke-direct {p4, p0}, Lcom/ironsource/environment/CrashReporter$1;-><init>(Lcom/ironsource/environment/CrashReporter;)V

    invoke-virtual {p3, p4}, Lcom/ironsource/environment/ANRHandler;->setANRListener(Lcom/ironsource/environment/ANRListener;)Lcom/ironsource/environment/ANRHandler;

    move-result-object p3

    .line 100
    invoke-virtual {p3}, Lcom/ironsource/environment/ANRHandler;->start()V

    .line 103
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ironsource/environment/CrashReporter;->sendExceptions(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 104
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/ironsource/environment/CrashReporter$2;

    invoke-direct {p3, p0, p1, p6}, Lcom/ironsource/environment/CrashReporter$2;-><init>(Lcom/ironsource/environment/CrashReporter;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method
