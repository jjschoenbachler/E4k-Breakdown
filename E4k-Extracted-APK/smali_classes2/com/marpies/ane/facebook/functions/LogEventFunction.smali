.class public Lcom/marpies/ane/facebook/functions/LogEventFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "LogEventFunction.java"


# static fields
.field private static final EPSILON:D = 1.0E-7

.field private static mLogger:Lcom/facebook/appevents/AppEventsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method

.method private getLogger()Lcom/facebook/appevents/AppEventsLogger;
    .locals 1

    .line 67
    sget-object v0, Lcom/marpies/ane/facebook/functions/LogEventFunction;->mLogger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    sput-object v0, Lcom/marpies/ane/facebook/functions/LogEventFunction;->mLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 70
    :cond_0
    sget-object v0, Lcom/marpies/ane/facebook/functions/LogEventFunction;->mLogger:Lcom/facebook/appevents/AppEventsLogger;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    .line 34
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x0

    .line 36
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 38
    aget-object v1, p2, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 39
    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getBundleFromFREArray(Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x2

    .line 41
    aget-object p2, p2, v1

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getDoubleFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0, v3, v4}, Lcom/marpies/ane/facebook/functions/LogEventFunction;->isZero(D)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/LogEventFunction;->getLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/LogEventFunction;->getLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p2

    invoke-virtual {p2, p1, v3, v4, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/marpies/ane/facebook/functions/LogEventFunction;->isZero(D)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 51
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/LogEventFunction;->getLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_3
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/LogEventFunction;->getLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p2

    invoke-virtual {p2, p1, v3, v4}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;D)V

    .line 57
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Logging event "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    return-object v2
.end method

.method public isZero(D)Z
    .locals 3

    const-wide v0, -0x4185280d654350b8L    # -1.0E-7

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
