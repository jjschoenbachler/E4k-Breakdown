.class public Lcom/ironsource/sdk/Events/ISNEventsBaseData;
.super Ljava/lang/Object;
.source "ISNEventsBaseData.java"

# interfaces
.implements Lcom/ironsource/eventsTracker/IBaseData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;
    }
.end annotation


# static fields
.field private static baseData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->collectPermanentData(Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;)V

    .line 19
    iget-object p1, p1, Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->collectMutableData(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;Lcom/ironsource/sdk/Events/ISNEventsBaseData$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/Events/ISNEventsBaseData;-><init>(Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;)V

    return-void
.end method

.method private collectMutableData(Landroid/content/Context;)V
    .locals 2

    .line 23
    sget-object v0, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v1, "connectiontype"

    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private collectPermanentData(Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;)V
    .locals 5

    .line 27
    iget-object v0, p1, Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;->context:Landroid/content/Context;

    .line 28
    invoke-static {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v1

    .line 30
    sget-object v2, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v3, "deviceos"

    invoke-virtual {v1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v2, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v3, "deviceosversion"

    invoke-virtual {v1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v2, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v3, "deviceapilevel"

    invoke-virtual {v1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceApiLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v2, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v3, "deviceoem"

    invoke-virtual {v1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOem()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v2, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v3, "devicemodel"

    invoke-virtual {v1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v2, "bundleid"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v1, "applicationkey"

    iget-object v2, p1, Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;->applicationKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v1, "sessionid"

    iget-object v2, p1, Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;->sessionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v1, "sdkversion"

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v1, "applicationuserid"

    iget-object p1, p1, Lcom/ironsource/sdk/Events/ISNEventsBaseData$Builder;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object p1, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v0, "env"

    const-string v1, "prod"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object p1, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v0, "origin"

    const-string v1, "n"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setConnectionType(Ljava/lang/String;)V
    .locals 2

    .line 50
    sget-object v0, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    const-string v1, "connectiontype"

    invoke-static {p0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/ironsource/sdk/Events/ISNEventsBaseData;->baseData:Ljava/util/Map;

    return-object v0
.end method
