.class Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager$1;
.super Ljava/util/TimerTask;
.source "AdUnitLoadingModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->trigger(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager$1;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager$1;->this$0:Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;->access$000(Lcom/ironsource/mediationsdk/adunit/manager/AdUnitLoadingModeManager;)Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/manager/LoadingModeListener;->onLoadTriggered()V

    return-void
.end method
