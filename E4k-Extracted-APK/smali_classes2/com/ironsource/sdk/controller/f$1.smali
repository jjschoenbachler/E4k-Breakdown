.class final Lcom/ironsource/sdk/controller/f$1;
.super Lorg/json/JSONObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/f;->f()Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/sdk/controller/f;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/f;)V
    .locals 1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/f$1;->a:Lcom/ironsource/sdk/controller/f;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "controllerSourceStrategy"

    iget-object v0, p0, Lcom/ironsource/sdk/controller/f$1;->a:Lcom/ironsource/sdk/controller/f;

    iget v0, v0, Lcom/ironsource/sdk/controller/f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/f$1;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "controllerSourceCode"

    iget-object v0, p0, Lcom/ironsource/sdk/controller/f$1;->a:Lcom/ironsource/sdk/controller/f;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/f;->d:Lcom/ironsource/sdk/controller/f$b;

    iget v0, v0, Lcom/ironsource/sdk/controller/f$b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/f$1;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
