.class public Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;
.super Ljava/lang/Object;
.source "NetworkGlobalDataWriter.java"


# instance fields
.field mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    invoke-direct {v0}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    return-void
.end method


# virtual methods
.method public collectDataFromActivity(Landroid/content/Context;)V
    .locals 2

    .line 41
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    check-cast p1, Landroid/app/Activity;

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "imm"

    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->isImmersiveSupported(Landroid/app/Activity;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public extendData(Lorg/json/JSONObject;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "ctgp"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->extendData(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setDebugParams()V
    .locals 3

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->getInstance()Lcom/ironsource/sdk/utils/IronSourceQaProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/utils/IronSourceQaProperties;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v2, "debug"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->extendData(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public setGlobalDataFromControllerConfig()V
    .locals 3

    .line 51
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfig()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 56
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "chinaCDN"

    .line 57
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v2, "cncdn"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setGooglePlayInstalled(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-static {p1}, Lcom/ironsource/environment/PackagesInstallationService;->isGooglePlayInstalled(Landroid/content/Context;)Z

    move-result p1

    .line 72
    iget-object v0, p0, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "gpi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNetworkSdkVersion()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "sdkv"

    const-string v2, "5.116"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOmidData()V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "omv"

    .line 35
    sget-object v2, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->OMID_LIB_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ompv"

    const-string v2, "7"

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/ironsource/sdk/service/NetworkGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    invoke-virtual {v1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/util/Map;)V

    return-void
.end method
