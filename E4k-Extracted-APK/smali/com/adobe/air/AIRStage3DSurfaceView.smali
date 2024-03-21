.class public Lcom/adobe/air/AIRStage3DSurfaceView;
.super Landroid/view/SurfaceView;
.source "AIRStage3DSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.adobe.air"


# instance fields
.field private mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private mFPInstance:J

.field private mInit:Z

.field private mSurfaceValid:Z

.field private mXmax:I

.field private mXmin:I

.field private mYmax:I

.field private mYmin:I

.field private m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;J)V
    .locals 3

    .line 57
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const-wide/16 v1, 0x0

    .line 41
    iput-wide v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mInit:Z

    .line 43
    iput-boolean v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mSurfaceValid:Z

    .line 44
    iput v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmin:I

    .line 45
    iput v1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmin:I

    const/16 v2, 0x10

    .line 46
    iput v2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmax:I

    .line 47
    iput v2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmax:I

    .line 48
    iput-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 59
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/air/AIRStage3DSurfaceView;->setFPInstance(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;J)Z

    .line 61
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRStage3DSurfaceView;->setEnabled(Z)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->setClickable(Z)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->setFocusable(Z)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->setFocusableInTouchMode(Z)V

    .line 67
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRStage3DSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isGingerbread()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->setZOrderOnTop(Z)V

    .line 77
    iget-object p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 p2, 0x6

    invoke-virtual {p1, p0, p2}, Lcom/adobe/air/AndroidActivityWrapper;->registerPlane(Landroid/view/SurfaceView;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AIRStage3DSurfaceView;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AIRStage3DSurfaceView;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRStage3DSurfaceView;->nativeSurfaceLayoutChanged(J)V

    return-void
.end method

.method private native nativeSurfaceChanged(JII)V
.end method

.method private native nativeSurfaceCreated(J)V
.end method

.method private native nativeSurfaceLayoutChanged(J)V
.end method

.method private native nativeSurfaceLost(J)V
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 83
    iget p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmax:I

    iget p2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmin:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmax:I

    iget v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmin:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/adobe/air/AIRStage3DSurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setFPInstance(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;J)Z
    .locals 2

    .line 97
    iput-object p2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 99
    iput-wide p3, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    .line 100
    iget-wide p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    const/4 p3, 0x6

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-eqz p4, :cond_0

    .line 102
    iget-object p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1, p0, p3}, Lcom/adobe/air/AndroidActivityWrapper;->registerPlane(Landroid/view/SurfaceView;I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1, p3}, Lcom/adobe/air/AndroidActivityWrapper;->unregisterPlane(I)V

    .line 107
    :goto_0
    iget-boolean p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mSurfaceValid:Z

    return p1
.end method

.method public setPlanePosition(IIII)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmin:I

    iput p2, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmin:I

    iput p3, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mXmax:I

    iput p4, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mYmax:I

    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/air/AIRStage3DSurfaceView;->layout(IIII)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 111
    iget-wide p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 113
    iget-wide p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/air/AIRStage3DSurfaceView;->nativeSurfaceChanged(JII)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mSurfaceValid:Z

    .line 120
    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 122
    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->nativeSurfaceCreated(J)V

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 128
    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/adobe/air/AIRStage3DSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRStage3DSurfaceView$1;-><init>(Lcom/adobe/air/AIRStage3DSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mSurfaceValid:Z

    .line 159
    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 161
    iget-wide v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mFPInstance:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AIRStage3DSurfaceView;->nativeSurfaceLost(J)V

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 166
    invoke-virtual {p0}, Lcom/adobe/air/AIRStage3DSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/adobe/air/AIRStage3DSurfaceView;->m_layOutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
