.class public Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
.super Ljava/lang/Object;
.source "AdData.java"


# instance fields
.field private final mConfiguration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mServerData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->mServerData:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->mConfiguration:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->mConfiguration:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getConfiguration()Ljava/util/Map;
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

    .line 28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->mConfiguration:Ljava/util/Map;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->mConfiguration:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getServerData()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->mServerData:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->mConfiguration:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
