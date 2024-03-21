.class public Lcom/ironsource/environment/globaldata/GlobalDataWriter;
.super Ljava/lang/Object;
.source "GlobalDataWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extendData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->getInstance()Lcom/ironsource/environment/globaldata/GlobalDataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->extendData(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 12
    invoke-static {}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->getInstance()Lcom/ironsource/environment/globaldata/GlobalDataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->getInstance()Lcom/ironsource/environment/globaldata/GlobalDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->setData(Ljava/util/Map;)V

    return-void
.end method

.method public setInitialData(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-static {}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->getInstance()Lcom/ironsource/environment/globaldata/GlobalDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->setInitialData(Landroid/content/Context;)V

    return-void
.end method
