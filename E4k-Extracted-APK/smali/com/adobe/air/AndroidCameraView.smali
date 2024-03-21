.class Lcom/adobe/air/AndroidCameraView;
.super Landroid/view/SurfaceView;
.source "AndroidCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private mRecreating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/adobe/air/AndroidCameraView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/adobe/air/AndroidCameraView;->mRecreating:Z

    .line 54
    iput-object p2, p0, Lcom/adobe/air/AndroidCameraView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 55
    invoke-virtual {p0}, Lcom/adobe/air/AndroidCameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidCameraView;->setZOrderMediaOverlay(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/adobe/air/AndroidCameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/adobe/air/AndroidCameraView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/adobe/air/AndroidCameraView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    return-void
.end method
