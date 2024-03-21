.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;->onEventsSenderResult(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

.field final synthetic val$extraData:Ljava/util/ArrayList;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;ZLjava/util/ArrayList;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->val$success:Z

    iput-object p3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->val$extraData:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 358
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->val$success:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1002(Lcom/ironsource/mediationsdk/events/BaseEventsManager;I)I

    goto :goto_0

    .line 364
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Failed to send events. Saving them back to storage."

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3$1;->val$extraData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->saveCombinedEventListInCaseOfError(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
