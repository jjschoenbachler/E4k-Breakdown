.class Lcom/ironsource/sdk/controller/ControllerHtmlFile$1;
.super Lorg/json/JSONObject;
.source "ControllerHtmlFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerHtmlFile;->getControllerSourceData()Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerHtmlFile;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerHtmlFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$1;->this$0:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "controllerSourceStrategy"

    .line 270
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$1;->this$0:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->access$000(Lcom/ironsource/sdk/controller/ControllerHtmlFile;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$1;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "controllerSourceCode"

    .line 271
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$1;->this$0:Lcom/ironsource/sdk/controller/ControllerHtmlFile;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile;->access$100(Lcom/ironsource/sdk/controller/ControllerHtmlFile;)Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$1;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
