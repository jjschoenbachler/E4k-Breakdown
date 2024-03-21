.class public Lcom/marpies/ane/facebook/functions/GetSDKVersionFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "GetSDKVersionFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 30
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
