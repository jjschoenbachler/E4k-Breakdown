.class Lcom/adobe/flashruntime/shared/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/flashruntime/shared/VideoView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/flashruntime/shared/VideoView;


# direct methods
.method constructor <init>(Lcom/adobe/flashruntime/shared/VideoView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const-string p1, "VideoSurfaceView"

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", width="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-virtual {p1}, Lcom/adobe/flashruntime/shared/VideoView;->useOverlay()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {p1}, Lcom/adobe/flashruntime/shared/VideoView;->access$000(Lcom/adobe/flashruntime/shared/VideoView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {p1}, Lcom/adobe/flashruntime/shared/VideoView;->access$100(Lcom/adobe/flashruntime/shared/VideoView;)I

    move-result p1

    iget-object p2, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {p2}, Lcom/adobe/flashruntime/shared/VideoView;->access$200(Lcom/adobe/flashruntime/shared/VideoView;)I

    move-result p2

    sub-int/2addr p1, p2

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {p1}, Lcom/adobe/flashruntime/shared/VideoView;->access$300(Lcom/adobe/flashruntime/shared/VideoView;)I

    move-result p1

    iget-object p2, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {p2}, Lcom/adobe/flashruntime/shared/VideoView;->access$400(Lcom/adobe/flashruntime/shared/VideoView;)I

    move-result p2

    sub-int/2addr p1, p2

    if-eq p4, p1, :cond_1

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    iget-object p2, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {p2}, Lcom/adobe/flashruntime/shared/VideoView;->access$200(Lcom/adobe/flashruntime/shared/VideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {p3}, Lcom/adobe/flashruntime/shared/VideoView;->access$400(Lcom/adobe/flashruntime/shared/VideoView;)I

    move-result p3

    iget-object p4, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {p4}, Lcom/adobe/flashruntime/shared/VideoView;->access$100(Lcom/adobe/flashruntime/shared/VideoView;)I

    move-result p4

    iget-object v0, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {v0}, Lcom/adobe/flashruntime/shared/VideoView;->access$300(Lcom/adobe/flashruntime/shared/VideoView;)I

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/adobe/flashruntime/shared/VideoView;->setPlanePosition(IIII)V

    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "VideoSurfaceView"

    const-string v1, "surfaceCreated"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/adobe/flashruntime/shared/VideoView;->access$502(Lcom/adobe/flashruntime/shared/VideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 91
    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adobe/flashruntime/shared/VideoView;->access$602(Lcom/adobe/flashruntime/shared/VideoView;Z)Z

    .line 92
    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-virtual {p1}, Lcom/adobe/flashruntime/shared/VideoView;->notifyNativeReadyForVideo()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "VideoSurfaceView"

    const-string v0, "surfaceDestroyed"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-static {p1}, Lcom/adobe/flashruntime/shared/VideoView;->access$500(Lcom/adobe/flashruntime/shared/VideoView;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 98
    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/adobe/flashruntime/shared/VideoView;->access$602(Lcom/adobe/flashruntime/shared/VideoView;Z)Z

    .line 99
    iget-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView$1;->this$0:Lcom/adobe/flashruntime/shared/VideoView;

    invoke-virtual {p1}, Lcom/adobe/flashruntime/shared/VideoView;->notifyNativeReadyForVideo()V

    return-void
.end method
