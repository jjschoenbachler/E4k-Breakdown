.class Lcom/ironsource/sdk/controller/WebController$14;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController;->onFileDownloadFail(Lcom/ironsource/sdk/fileSystem/ISNFile;Lcom/ironsource/sdk/data/ISNError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;

.field final synthetic val$error:Lcom/ironsource/sdk/data/ISNError;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/ISNError;)V
    .locals 0

    .line 3732
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$14;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$14;->val$error:Lcom/ironsource/sdk/data/ISNError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3735
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$14;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1100(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerEventListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controller html - failed to download - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$14;->val$error:Lcom/ironsource/sdk/data/ISNError;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/ISNError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/controller/ControllerEventListener;->handleControllerFailed(Ljava/lang/String;)V

    return-void
.end method
