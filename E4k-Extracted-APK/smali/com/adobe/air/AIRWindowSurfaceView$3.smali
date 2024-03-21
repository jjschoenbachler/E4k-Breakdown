.class Lcom/adobe/air/AIRWindowSurfaceView$3;
.super Ljava/lang/Object;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;

.field final synthetic val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0

    .line 1376
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 1379
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1381
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getIsFullScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1383
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$900(Lcom/adobe/air/AIRWindowSurfaceView;)V

    .line 1384
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1000(Lcom/adobe/air/AIRWindowSurfaceView;Z)V

    goto :goto_0

    .line 1388
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$3;->val$theThis:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$1000(Lcom/adobe/air/AIRWindowSurfaceView;Z)V

    :goto_0
    return-void
.end method
