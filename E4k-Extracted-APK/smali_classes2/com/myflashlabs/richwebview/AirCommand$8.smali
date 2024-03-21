.class Lcom/myflashlabs/richwebview/AirCommand$8;
.super Ljava/lang/Object;
.source "AirCommand.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/AirCommand;->findOutIfKeyboardIsVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/AirCommand;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$lastStatus:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/AirCommand;Landroid/view/View;[Ljava/lang/Boolean;)V
    .locals 0

    .line 2511
    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$8;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    iput-object p2, p0, Lcom/myflashlabs/richwebview/AirCommand$8;->val$decorView:Landroid/view/View;

    iput-object p3, p0, Lcom/myflashlabs/richwebview/AirCommand$8;->val$lastStatus:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 2515
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2516
    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand$8;->val$decorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2517
    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand$8;->val$decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2519
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    .line 2522
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    const/4 v4, 0x0

    cmpl-double v5, v2, v0

    if-lez v5, :cond_0

    .line 2524
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$8;->val$lastStatus:[Ljava/lang/Boolean;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2526
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->KEYBOARD_VISIBILITY:Ljava/lang/String;

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$8;->val$lastStatus:[Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 2532
    :cond_0
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$8;->val$lastStatus:[Ljava/lang/Boolean;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2534
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->KEYBOARD_VISIBILITY:Ljava/lang/String;

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$8;->val$lastStatus:[Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    :cond_1
    :goto_0
    return-void
.end method
