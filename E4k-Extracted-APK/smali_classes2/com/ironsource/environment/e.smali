.class public final Lcom/ironsource/environment/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/environment/e$a;
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String; = ""


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/environment/e;->g:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/environment/e;->d:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/environment/e;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    const-string v0, " "

    iput-object v0, p0, Lcom/ironsource/environment/e;->b:Ljava/lang/String;

    const-string v0, "https://outcome-crash-report.supersonicads.com/reporter"

    iput-object v0, p0, Lcom/ironsource/environment/e;->i:Ljava/lang/String;

    new-instance v0, Lcom/ironsource/environment/d;

    iget-object v1, p0, Lcom/ironsource/environment/e;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {v0, v1}, Lcom/ironsource/environment/d;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/environment/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/ironsource/environment/e;
    .locals 1

    sget-object v0, Lcom/ironsource/environment/e$a;->a:Lcom/ironsource/environment/e;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "none"

    return-object p0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    const-string p0, "none"

    return-object p0

    :cond_1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "none"

    return-object p0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "wifi"

    return-object p0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "cellular"

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "wifi"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MOBILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "cellular"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_6
    const-string p0, "none"

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "none"

    return-object p0
.end method

.method static synthetic a(Lcom/ironsource/environment/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/environment/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/ironsource/environment/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ironsource/environment/e;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ironsource/environment/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ironsource/environment/e;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/ironsource/environment/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/environment/e;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/environment/e;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/environment/e;->d:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V
    .locals 5
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

    if-eqz p1, :cond_8

    const-string v0, "automation_log"

    const-string v1, "init ISCrashReporter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ironsource/environment/e;->a:Landroid/content/Context;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p4, p0, Lcom/ironsource/environment/e;->b:Ljava/lang/String;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    iput-object p3, p0, Lcom/ironsource/environment/e;->i:Ljava/lang/String;

    :cond_1
    iput-object p6, p0, Lcom/ironsource/environment/e;->f:Ljava/lang/String;

    if-eqz p5, :cond_2

    new-instance p3, Lcom/ironsource/environment/a;

    invoke-direct {p3, p7}, Lcom/ironsource/environment/a;-><init>(I)V

    iput-boolean p8, p3, Lcom/ironsource/environment/a;->c:Z

    const/4 p4, 0x1

    iput-boolean p4, p3, Lcom/ironsource/environment/a;->b:Z

    new-instance p4, Lcom/ironsource/environment/e$1;

    invoke-direct {p4, p0}, Lcom/ironsource/environment/e$1;-><init>(Lcom/ironsource/environment/e;)V

    iput-object p4, p3, Lcom/ironsource/environment/a;->a:Lcom/ironsource/environment/b;

    invoke-virtual {p3}, Lcom/ironsource/environment/a;->start()V

    :cond_2
    iget-object p3, p0, Lcom/ironsource/environment/e;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/ironsource/environment/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "none"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "CRep"

    const/4 p5, 0x0

    invoke-virtual {p1, p4, p5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    const-string p5, "String1"

    iget-object p7, p0, Lcom/ironsource/environment/e;->e:Ljava/lang/String;

    invoke-interface {p4, p5, p7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string p7, "sId"

    iget-object p8, p0, Lcom/ironsource/environment/e;->f:Ljava/lang/String;

    invoke-interface {p4, p7, p8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ironsource/environment/f;->a()Ljava/util/List;

    move-result-object p7

    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :goto_0
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    if-eqz p8, :cond_7

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/ironsource/environment/c;

    invoke-virtual {p8}, Lcom/ironsource/environment/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8}, Lcom/ironsource/environment/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8}, Lcom/ironsource/environment/c;->c()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "crashDate"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "stacktraceCrash"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "crashType"

    invoke-virtual {v3, v0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "CrashReporterVersion"

    const-string v0, "1.0.5"

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "SDKVersion"

    const-string v0, "7.2.3.1"

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "deviceLanguage"

    invoke-static {p1}, Lcom/ironsource/environment/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "appVersion"

    invoke-static {p1, v2}, Lcom/ironsource/environment/c;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "deviceOSVersion"

    invoke-static {}, Lcom/ironsource/environment/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "network"

    invoke-virtual {v3, p8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "deviceApiLevel"

    invoke-static {}, Lcom/ironsource/environment/h;->f()I

    move-result v0

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p8, "deviceModel"

    invoke-static {}, Lcom/ironsource/environment/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "deviceOS"

    invoke-static {}, Lcom/ironsource/environment/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "advertisingId"

    invoke-virtual {v3, p8, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "isLimitAdTrackingEnabled"

    iget-boolean v0, p0, Lcom/ironsource/environment/e;->g:Z

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p8, "deviceOEM"

    invoke-static {}, Lcom/ironsource/environment/h;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "systemProperties"

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v3, p8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "bundleId"

    invoke-virtual {v3, p8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p8, "sId"

    invoke-virtual {v3, p8, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p8, Lorg/json/JSONObject;

    invoke-direct {p8}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    move-object p8, v3

    :cond_5
    iput-object p8, p0, Lcom/ironsource/environment/e;->d:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iget-object p8, p0, Lcom/ironsource/environment/e;->d:Lorg/json/JSONObject;

    invoke-virtual {p8}, Lorg/json/JSONObject;->length()I

    move-result p8

    if-nez p8, :cond_6

    const-string p8, "ISCrashReport"

    const-string v0, " Is Empty"

    invoke-static {p8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    new-instance p8, Ljava/lang/Thread;

    new-instance v0, Lcom/ironsource/environment/e$3;

    invoke-direct {v0, p0}, Lcom/ironsource/environment/e$3;-><init>(Lcom/ironsource/environment/e;)V

    invoke-direct {p8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p8}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/ironsource/environment/f;->c()V

    goto/16 :goto_0

    :cond_7
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/ironsource/environment/e$2;

    invoke-direct {p3, p0, p1, p6}, Lcom/ironsource/environment/e$2;-><init>(Lcom/ironsource/environment/e;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_8
    return-void
.end method
