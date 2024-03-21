.class public Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;
.super Ljava/lang/Object;
.source "IronSourceSessionDepthGlobalDataWriter.java"


# instance fields
.field mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    invoke-direct {v0}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    return-void
.end method


# virtual methods
.method public setBannerSessionDepthGlobalData(I)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "sdba"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInterstitialSessionDepthGlobalData(I)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "sdia"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRewardedVideoSessionDepthGlobalData(I)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/ironsource/mediationsdk/globalData/IronSourceSessionDepthGlobalDataWriter;->mGlobalDataWriter:Lcom/ironsource/environment/globaldata/GlobalDataWriter;

    const-string v1, "sdra"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/environment/globaldata/GlobalDataWriter;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
