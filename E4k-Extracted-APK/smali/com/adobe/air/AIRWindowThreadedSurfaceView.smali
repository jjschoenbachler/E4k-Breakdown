.class public Lcom/adobe/air/AIRWindowThreadedSurfaceView;
.super Lcom/adobe/air/AIRWindowSurfaceView;
.source "AIRWindowThreadedSurfaceView.java"


# instance fields
.field public final drawSemaphore:Ljava/util/concurrent/Semaphore;

.field private thread:Lcom/adobe/air/DrawThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRWindowSurfaceView;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    const/4 p2, 0x0

    .line 17
    iput-object p2, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    .line 18
    new-instance p2, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p2, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->drawSemaphore:Ljava/util/concurrent/Semaphore;

    .line 23
    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->Init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected Init(Landroid/content/Context;)V
    .locals 2

    .line 29
    new-instance v0, Lcom/adobe/air/DrawThread;

    iget-object v1, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1, p1}, Lcom/adobe/air/DrawThread;-><init>(Lcom/adobe/air/AIRWindowThreadedSurfaceView;Landroid/view/SurfaceHolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    return-void
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;)V
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/DrawThread;->requestDraw(IIIILandroid/graphics/Bitmap;)V

    .line 103
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->drawSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 13

    move-object v0, p0

    .line 114
    iget-object v1, v0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/adobe/air/DrawThread;->requestDraw(IIIILandroid/graphics/Bitmap;IIIIZI)V

    .line 117
    :try_start_0
    iget-object v1, v0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->drawSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Lcom/adobe/air/AIRWindowSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 43
    iget-object p1, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adobe/air/DrawThread;->setRunning(Z)V

    .line 44
    iget-object p1, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    invoke-virtual {p1}, Lcom/adobe/air/DrawThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    invoke-virtual {p1}, Lcom/adobe/air/DrawThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 73
    iget-object p1, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/air/DrawThread;->setRunning(Z)V

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    invoke-virtual {v1}, Lcom/adobe/air/DrawThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->thread:Lcom/adobe/air/DrawThread;

    invoke-virtual {v1}, Lcom/adobe/air/DrawThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
