.class Lcom/ironsource/sdk/controller/ControllerManager$8;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerManager;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerManager;

.field final synthetic val$listener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

.field final synthetic val$showParams:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerManager;Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager$8;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/ControllerManager$8;->val$showParams:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/ControllerManager$8;->val$listener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$8;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$000(Lcom/ironsource/sdk/controller/ControllerManager;)Lcom/ironsource/sdk/controller/IronSourceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$8;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$000(Lcom/ironsource/sdk/controller/ControllerManager;)Lcom/ironsource/sdk/controller/IronSourceController;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerManager$8;->val$showParams:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerManager$8;->val$listener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceController;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    :cond_0
    return-void
.end method
