.class Lcom/ironsource/mediationsdk/ProgRvManager$2;
.super Ljava/lang/Object;
.source "ProgRvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ProgRvManager;->makeAuction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ProgRvManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ProgRvManager;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 304
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const-string v1, "makeAuction()"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$100(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$202(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$302(Lcom/ironsource/mediationsdk/ProgRvManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 309
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->resetConfigurations(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 311
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$402(Lcom/ironsource/mediationsdk/ProgRvManager;J)J

    .line 313
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 314
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$500(Lcom/ironsource/mediationsdk/ProgRvManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 318
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->unloadVideo()V

    .line 319
    iget-object v8, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v8}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$600(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 320
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 321
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getBiddingData()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 323
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const v8, 0x13c91

    .line 326
    new-array v9, v4, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v10, "reason"

    aput-object v10, v3, v7

    const-string v10, "Missing bidding data"

    aput-object v10, v3, v4

    aput-object v3, v9, v7

    invoke-virtual {v2, v8, v9}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 335
    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 336
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const/16 v1, 0x515

    new-array v2, v3, [[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v7

    const/16 v6, 0x3ed

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    aput-object v5, v2, v7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$700(Lcom/ironsource/mediationsdk/ProgRvManager;ILjava/util/Map;)V

    .line 337
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const-string v1, "makeAuction() failed - No candidates available for auctioning"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$100(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$800(Lcom/ironsource/mediationsdk/ProgRvManager;)V

    return-void

    .line 342
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeAuction() - request waterfall is: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$100(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$900(Lcom/ironsource/mediationsdk/ProgRvManager;I)V

    .line 345
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const/16 v2, 0x514

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$900(Lcom/ironsource/mediationsdk/ProgRvManager;I)V

    .line 346
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    const/16 v2, 0x51e

    new-array v8, v4, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v9, "ext1"

    aput-object v9, v3, v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    aput-object v3, v8, v7

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utilities/IronsourceMapUtilities;->createMap([[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$1000(Lcom/ironsource/mediationsdk/ProgRvManager;ILjava/util/Map;)V

    .line 348
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$1300(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHandler;

    move-result-object v3

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$1100(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHistory;

    move-result-object v7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->access$1200(Lcom/ironsource/mediationsdk/ProgRvManager;)I

    move-result v8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager$2;->this$0:Lcom/ironsource/mediationsdk/ProgRvManager;

    iget-object v9, v0, Lcom/ironsource/mediationsdk/ProgRvManager;->segment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/AuctionHandler;->executeAuction(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/AuctionHistory;ILcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method
