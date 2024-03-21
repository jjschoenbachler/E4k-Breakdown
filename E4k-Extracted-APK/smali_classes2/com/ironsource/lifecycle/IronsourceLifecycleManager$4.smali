.class Lcom/ironsource/lifecycle/IronsourceLifecycleManager$4;
.super Ljava/lang/Object;
.source "IronsourceLifecycleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/lifecycle/IronsourceLifecycleManager;->dispatchPauseIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/lifecycle/IronsourceLifecycleManager;


# direct methods
.method constructor <init>(Lcom/ironsource/lifecycle/IronsourceLifecycleManager;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/ironsource/lifecycle/IronsourceLifecycleManager$4;->this$0:Lcom/ironsource/lifecycle/IronsourceLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/ironsource/lifecycle/IronsourceLifecycleManager$4;->this$0:Lcom/ironsource/lifecycle/IronsourceLifecycleManager;

    invoke-static {v0}, Lcom/ironsource/lifecycle/IronsourceLifecycleManager;->access$200(Lcom/ironsource/lifecycle/IronsourceLifecycleManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/lifecycle/IronsourceLifecycleListener;

    .line 184
    invoke-interface {v1}, Lcom/ironsource/lifecycle/IronsourceLifecycleListener;->appPaused()V

    goto :goto_0

    :cond_0
    return-void
.end method
