.class Lcom/ironsource/sdk/controller/WebController$3;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$configObject:Lorg/json/JSONObject;

.field final synthetic val$controllerPathWithParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 2634
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$3;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$3;->val$configObject:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController$3;->val$controllerPathWithParams:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2638
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$3;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$3;->val$configObject:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$5700(Lcom/ironsource/sdk/controller/WebController;Lorg/json/JSONObject;)V

    .line 2640
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$3;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "about:blank"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$5800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    .line 2641
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$3;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$3;->val$controllerPathWithParams:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$5800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    return-void
.end method
