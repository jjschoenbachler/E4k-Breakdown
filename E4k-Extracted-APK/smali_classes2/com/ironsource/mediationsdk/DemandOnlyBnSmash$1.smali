.class Lcom/ironsource/mediationsdk/DemandOnlyBnSmash$1;
.super Ljava/util/TimerTask;
.source "DemandOnlyBnSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->startTimeoutTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 211
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load timed out state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    sget-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->compareAndSetState(Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->access$000(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 214
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;->access$100(Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;)Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;

    move-result-object v4

    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v0, 0x260

    const-string v1, "load timed out"

    invoke-direct {v5, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/DemandOnlyBnSmash$1;->this$0:Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/ironsource/mediationsdk/sdk/DemandOnlyBnManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyBnSmash;ZJ)V

    :cond_0
    return-void
.end method
