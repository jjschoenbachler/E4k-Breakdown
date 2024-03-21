.class Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$1;
.super Ljava/util/TimerTask;
.source "BaseAdUnitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->makeAuction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$1;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$1;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;->access$000(Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;)V

    return-void
.end method
