.class Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;
.super Landroid/os/Handler;
.source "AIRWindowSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRWindowSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoverTimeoutHandler"
.end annotation


# static fields
.field static final INTERVAL:I = 0x1f4


# instance fields
.field private mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mLastMove:J

.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mLastMove:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    const/4 p1, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 232
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$002(Lcom/adobe/air/AIRWindowSurfaceView;Z)Z

    .line 233
    new-instance v0, Lcom/adobe/air/TouchEventData;

    const/16 v2, 0x20

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 234
    invoke-static {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$100(Lcom/adobe/air/AIRWindowSurfaceView;)F

    move-result v3

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 235
    invoke-static {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$200(Lcom/adobe/air/AIRWindowSurfaceView;)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 242
    invoke-static {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$300(Lcom/adobe/air/AIRWindowSurfaceView;)I

    move-result v11

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    const/4 v1, 0x0

    .line 243
    invoke-static {p1, v0, v1}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$400(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public setLastMove(J)V
    .locals 0

    .line 251
    iput-wide p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mLastMove:J

    return-void
.end method
