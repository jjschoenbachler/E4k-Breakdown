.class Lcom/ironsource/sdk/controller/ControllerManager$3;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerManager;->createNativeController(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerManager;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerManager;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager$3;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$3;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->handleControllerReady()V

    return-void
.end method
