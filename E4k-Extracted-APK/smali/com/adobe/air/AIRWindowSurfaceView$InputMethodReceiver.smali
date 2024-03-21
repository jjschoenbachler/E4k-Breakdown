.class Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;
.super Landroid/os/ResultReceiver;
.source "AIRWindowSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRWindowSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputMethodReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 908
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {p1, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->access$500(Lcom/adobe/air/AIRWindowSurfaceView;Z)V

    goto :goto_1

    .line 918
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    :goto_1
    return-void
.end method
