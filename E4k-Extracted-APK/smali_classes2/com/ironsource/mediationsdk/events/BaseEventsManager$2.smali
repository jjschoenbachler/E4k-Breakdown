.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

.field final synthetic val$event:Lcom/ironsource/eventsmodule/EventData;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v1, "eventSessionId"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldAddConnectionType(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v2, "connectionType"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v1, v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/eventsmodule/EventData;->setEventId(I)V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getEventAdUnit(I)I

    move-result v0

    .line 200
    sget-object v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->NOT_SUPPORTED:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->getId()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v2, "adUnit"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v2, "reason"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v2, "ext1"

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getGenericEventParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 208
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getGenericEventParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "eventId"

    if-eq v2, v3, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "timestamp"

    if-eq v2, v3, :cond_4

    .line 210
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 218
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldAddSessionDepth(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I

    move-result v0

    .line 220
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v3, "sessionDepth"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    :cond_6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_1

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 227
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v2, "placement"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v4}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getFirstSessionTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v4, "firstSessionTimestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    :cond_9
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"eventId\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"timestamp\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->EVENT:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v3, ","

    const-string v4, "\n"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    :goto_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1008(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)I

    .line 251
    :cond_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)[I

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;[I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 253
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)[I

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;I[I)Z

    move-result v0

    goto :goto_3

    .line 255
    :cond_b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isTriggerEvent(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    .line 258
    :goto_3
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v0, :cond_c

    .line 259
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1402(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Z)Z

    .line 261
    :cond_c
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 263
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 264
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    goto :goto_4

    .line 265
    :cond_d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v0, :cond_f

    .line 266
    :cond_e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    :cond_f
    :goto_4
    return-void

    :cond_10
    :goto_5
    return-void
.end method
