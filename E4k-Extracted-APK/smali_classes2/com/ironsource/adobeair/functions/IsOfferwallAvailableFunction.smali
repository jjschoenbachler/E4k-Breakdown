.class public Lcom/ironsource/adobeair/functions/IsOfferwallAvailableFunction;
.super Ljava/lang/Object;
.source "IsOfferwallAvailableFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 0

    .line 15
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isOfferwallAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 16
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
