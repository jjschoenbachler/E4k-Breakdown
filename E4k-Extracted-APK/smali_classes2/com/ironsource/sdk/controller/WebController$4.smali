.class Lcom/ironsource/sdk/controller/WebController$4;
.super Landroid/os/CountDownTimer;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController;->loadNew(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;

.field final synthetic val$loadAttempt:I


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController;JJI)V
    .locals 0

    .line 2647
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$4;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iput p6, p0, Lcom/ironsource/sdk/controller/WebController$4;->val$loadAttempt:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 2656
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$4;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading Controller Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    iget v0, p0, Lcom/ironsource/sdk/controller/WebController$4;->val$loadAttempt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$4;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$4$1;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/WebController$4$1;-><init>(Lcom/ironsource/sdk/controller/WebController$4;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnCallbacksThread(Ljava/lang/Runnable;)V

    return-void

    .line 2667
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$4;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget v1, p0, Lcom/ironsource/sdk/controller/WebController$4;->val$loadAttempt:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->load(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 2651
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$4;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
