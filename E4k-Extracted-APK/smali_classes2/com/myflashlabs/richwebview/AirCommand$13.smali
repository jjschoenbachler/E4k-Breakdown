.class Lcom/myflashlabs/richwebview/AirCommand$13;
.super Ljava/lang/Object;
.source "AirCommand.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/AirCommand;->listenToTouchEvents(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/AirCommand;

.field final synthetic val$$id:I


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/AirCommand;I)V
    .locals 0

    .line 2999
    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$13;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    iput p2, p0, Lcom/myflashlabs/richwebview/AirCommand$13;->val$$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 3005
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 3007
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    .line 3008
    iget v1, p0, Lcom/myflashlabs/richwebview/AirCommand$13;->val$$id:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "x"

    .line 3009
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "y"

    .line 3010
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3012
    sget-object p2, Lcom/myflashlabs/richwebview/ExConst;->TOUCH:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3017
    iget-object p2, p0, Lcom/myflashlabs/richwebview/AirCommand$13;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/myflashlabs/richwebview/AirCommand;->access$200(Lcom/myflashlabs/richwebview/AirCommand;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
