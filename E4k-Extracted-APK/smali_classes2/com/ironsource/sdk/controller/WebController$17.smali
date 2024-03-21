.class Lcom/ironsource/sdk/controller/WebController$17;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController;->unregisterConnectionReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController;Landroid/content/Context;)V
    .locals 0

    .line 3806
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$17;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$17;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3809
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$17;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$17;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$6300(Lcom/ironsource/sdk/controller/WebController;Landroid/content/Context;)V

    return-void
.end method
