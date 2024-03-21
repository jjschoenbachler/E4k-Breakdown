.class public Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;
.super Ljava/lang/Object;
.source "IronSourceMediationGlobalDataWriter.java"


# instance fields
.field mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    invoke-direct {v0}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    return-void
.end method


# virtual methods
.method public setAdPlayerInfo(Lcom/ironsource/isadplayer/ISAdPlayerInfo;)V
    .locals 3
    .param p1    # Lcom/ironsource/isadplayer/ISAdPlayerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "omv"

    .line 74
    invoke-virtual {p1}, Lcom/ironsource/isadplayer/ISAdPlayerInfo;->omidLibVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ompv"

    .line 75
    invoke-virtual {p1}, Lcom/ironsource/isadplayer/ISAdPlayerInfo;->omidPartnerVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkv"

    .line 76
    invoke-virtual {p1}, Lcom/ironsource/isadplayer/ISAdPlayerInfo;->playerVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    invoke-virtual {p1, v0}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "apky"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAuctionData(Ljava/lang/String;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "audt"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setConsent(Z)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "cnst"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFirstSession(Ljava/lang/Boolean;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "fs"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGooglePlayInstalled(Z)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "gpi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInitType(I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "itp"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInitialData(Landroid/content/Context;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setInitialData(Landroid/content/Context;)V

    return-void
.end method

.method public setMediationVersion(Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "medv"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMetaData(Lorg/json/JSONObject;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "md"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPluginType(Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "plugin"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTokenGenericParams(Lorg/json/JSONObject;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "tkgp"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "usid"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
