.class Lcom/adobe/flashruntime/air/VideoViewAIR$1;
.super Ljava/lang/Object;
.source "VideoViewAIR.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/flashruntime/air/VideoViewAIR;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;


# direct methods
.method constructor <init>(Lcom/adobe/flashruntime/air/VideoViewAIR;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 58
    iget-object p1, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    iget-object p2, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    invoke-virtual {p2}, Lcom/adobe/flashruntime/air/VideoViewAIR;->getFPInstance()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p3, p4}, Lcom/adobe/flashruntime/air/VideoViewAIR;->access$000(Lcom/adobe/flashruntime/air/VideoViewAIR;JII)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    iget-object p1, p1, Lcom/adobe/flashruntime/air/VideoViewAIR;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    iget-object p1, p1, Lcom/adobe/flashruntime/air/VideoViewAIR;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    return-void
.end method
