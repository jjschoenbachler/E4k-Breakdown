.class Lcom/adobe/air/DrawThread;
.super Ljava/lang/Thread;
.source "AIRWindowThreadedSurfaceView.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private mRun:Z

.field private mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowThreadedSurfaceView;Landroid/view/SurfaceHolder;Landroid/content/Context;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p2, 0x0

    .line 131
    iput-object p2, p0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    const/4 p3, 0x0

    .line 132
    iput-boolean p3, p0, Lcom/adobe/air/DrawThread;->mRun:Z

    .line 133
    iput-object p2, p0, Lcom/adobe/air/DrawThread;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object p2, p0, Lcom/adobe/air/DrawThread;->mLooper:Landroid/os/Looper;

    .line 140
    iput-object p1, p0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/DrawThread;Lcom/adobe/air/DrawRequest;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/adobe/air/DrawThread;->draw(Lcom/adobe/air/DrawRequest;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/DrawThread;)Lcom/adobe/air/AIRWindowThreadedSurfaceView;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    return-object p0
.end method

.method private draw(Lcom/adobe/air/DrawRequest;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 200
    iget-boolean v2, v1, Lcom/adobe/air/DrawRequest;->scale:Z

    if-eqz v2, :cond_0

    .line 201
    iget-object v3, v0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    iget v4, v1, Lcom/adobe/air/DrawRequest;->x:I

    iget v5, v1, Lcom/adobe/air/DrawRequest;->y:I

    iget v6, v1, Lcom/adobe/air/DrawRequest;->wd:I

    iget v7, v1, Lcom/adobe/air/DrawRequest;->ht:I

    iget-object v8, v1, Lcom/adobe/air/DrawRequest;->bm:Landroid/graphics/Bitmap;

    iget v9, v1, Lcom/adobe/air/DrawRequest;->dstX:I

    iget v10, v1, Lcom/adobe/air/DrawRequest;->dstY:I

    iget v11, v1, Lcom/adobe/air/DrawRequest;->dstWd:I

    iget v12, v1, Lcom/adobe/air/DrawRequest;->dstHt:I

    iget-boolean v13, v1, Lcom/adobe/air/DrawRequest;->fullsc:Z

    iget v14, v1, Lcom/adobe/air/DrawRequest;->bgColor:I

    invoke-virtual/range {v3 .. v14}, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v15, v0, Lcom/adobe/air/DrawThread;->mView:Lcom/adobe/air/AIRWindowThreadedSurfaceView;

    iget v2, v1, Lcom/adobe/air/DrawRequest;->x:I

    iget v3, v1, Lcom/adobe/air/DrawRequest;->y:I

    iget v4, v1, Lcom/adobe/air/DrawRequest;->wd:I

    iget v5, v1, Lcom/adobe/air/DrawRequest;->ht:I

    iget-object v1, v1, Lcom/adobe/air/DrawRequest;->bm:Landroid/graphics/Bitmap;

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v1

    invoke-virtual/range {v15 .. v20}, Lcom/adobe/air/AIRWindowThreadedSurfaceView;->draw(IIIILandroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public requestDraw(IIIILandroid/graphics/Bitmap;)V
    .locals 8

    .line 176
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3f1

    .line 177
    iput v1, v0, Landroid/os/Message;->what:I

    .line 178
    new-instance v1, Lcom/adobe/air/DrawRequest;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/adobe/air/DrawRequest;-><init>(IIIILandroid/graphics/Bitmap;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    iget-object p1, p0, Lcom/adobe/air/DrawThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestDraw(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 14

    .line 184
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3f1

    .line 185
    iput v1, v0, Landroid/os/Message;->what:I

    .line 186
    new-instance v1, Lcom/adobe/air/DrawRequest;

    move-object v2, v1

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v2 .. v13}, Lcom/adobe/air/DrawRequest;-><init>(IIIILandroid/graphics/Bitmap;IIIIZI)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p0

    .line 187
    iget-object v2, v1, Lcom/adobe/air/DrawThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 148
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 151
    new-instance v0, Lcom/adobe/air/DrawThread$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/DrawThread$1;-><init>(Lcom/adobe/air/DrawThread;)V

    iput-object v0, p0, Lcom/adobe/air/DrawThread;->mHandler:Landroid/os/Handler;

    .line 167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/DrawThread;->mLooper:Landroid/os/Looper;

    .line 169
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setRunning(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/adobe/air/DrawThread;->mRun:Z

    .line 193
    iget-boolean p1, p0, Lcom/adobe/air/DrawThread;->mRun:Z

    if-nez p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/adobe/air/DrawThread;->mLooper:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method
