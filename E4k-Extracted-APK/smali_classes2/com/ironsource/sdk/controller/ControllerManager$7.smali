.class Lcom/ironsource/sdk/controller/ControllerManager$7;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerManager;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerManager;

.field final synthetic val$applicationKey:Ljava/lang/String;

.field final synthetic val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

.field final synthetic val$listener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerManager;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->val$applicationKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    iput-object p5, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->val$listener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$000(Lcom/ironsource/sdk/controller/ControllerManager;)Lcom/ironsource/sdk/controller/IronSourceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$000(Lcom/ironsource/sdk/controller/ControllerManager;)Lcom/ironsource/sdk/controller/IronSourceController;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->val$applicationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerManager$7;->val$listener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceController;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    :cond_0
    return-void
.end method
