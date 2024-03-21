.class Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;
.super Ljava/util/TimerTask;
.source "LWSProgRvSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/LWSProgRvSmash;->startLoadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "Rewarded Video - load instance time out"

    .line 585
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    const/16 v3, 0x401

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1fe

    const/4 v1, 0x0

    const/16 v2, 0x1fe

    goto :goto_2

    .line 586
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    if-ne v1, v2, :cond_2

    const/16 v1, 0x401

    goto :goto_1

    :cond_2
    const/16 v0, 0x408

    const-string v1, "Rewarded Video - init instance time out"

    move-object v0, v1

    const/16 v1, 0x408

    .line 594
    :goto_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    sget-object v6, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    invoke-static {v2, v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$100(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;)V

    move v2, v1

    const/4 v1, 0x1

    .line 598
    :goto_2
    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-static {v6, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$200(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v1, :cond_3

    .line 601
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    const/16 v3, 0x4b0

    new-array v8, v7, [[Ljava/lang/Object;

    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "errorCode"

    aput-object v10, v9, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object v9, v8, v5

    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "duration"

    aput-object v10, v9, v5

    iget-object v10, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-static {v10}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$300(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object v9, v8, v4

    invoke-virtual {v1, v3, v8}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 602
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    const/16 v3, 0x4bc

    new-array v6, v6, [[Ljava/lang/Object;

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "errorCode"

    aput-object v9, v8, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    aput-object v8, v6, v5

    new-array v2, v7, [Ljava/lang/Object;

    const-string v8, "reason"

    aput-object v8, v2, v5

    aput-object v0, v2, v4

    aput-object v2, v6, v4

    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$300(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v0, v6, v7

    invoke-virtual {v1, v3, v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$400(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSRvManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/LWSRvManagerListener;->onLoadError(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    goto :goto_3

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    const/16 v1, 0x4b8

    new-array v2, v6, [[Ljava/lang/Object;

    new-array v6, v7, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v6, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    aput-object v6, v2, v5

    new-array v3, v7, [Ljava/lang/Object;

    const-string v6, "duration"

    aput-object v6, v3, v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$300(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v3, v2, v4

    new-array v3, v7, [Ljava/lang/Object;

    const-string v6, "ext1"

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvSmash$1;->this$0:Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->access$000(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/LWSProgRvSmash$SMASH_STATE;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
