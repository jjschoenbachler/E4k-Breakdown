.class public Lcom/ironsource/mediationsdk/globalData/IronSourceMediationInitializerGlobalDataWriter;
.super Ljava/lang/Object;
.source "IronSourceMediationInitializerGlobalDataWriter.java"


# instance fields
.field mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    invoke-direct {v0}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationInitializerGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    return-void
.end method


# virtual methods
.method public setAuctionData(Ljava/lang/String;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationInitializerGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "audt"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFirstSession(Ljava/lang/Boolean;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationInitializerGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "fs"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTokenGenericParams(Lorg/json/JSONObject;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationInitializerGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "tkgp"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationInitializerGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "usid"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
