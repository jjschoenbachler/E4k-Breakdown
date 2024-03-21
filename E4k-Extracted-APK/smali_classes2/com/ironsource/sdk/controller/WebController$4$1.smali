.class Lcom/ironsource/sdk/controller/WebController$4$1;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController$4;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/WebController$4;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController$4;)V
    .locals 0

    .line 2658
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$4$1;->this$1:Lcom/ironsource/sdk/controller/WebController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2661
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$4$1;->this$1:Lcom/ironsource/sdk/controller/WebController$4;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$4;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1100(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerEventListener;

    move-result-object v0

    const-string v1, "controller html - failed to load into web-view"

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/controller/ControllerEventListener;->handleControllerFailed(Ljava/lang/String;)V

    return-void
.end method
