.class public Lcom/adobe/flashruntime/shared/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSurfaceView"


# instance fields
.field private mAmCreated:Z

.field private mCPPInstance:J

.field private mContext:Landroid/content/Context;

.field private mPlanePositionSet:Z

.field private mSurface:Landroid/view/Surface;

.field private mXmax:I

.field private mXmin:I

.field private mYmax:I

.field private mYmin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mXmin:I

    .line 49
    iput v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mYmin:I

    const/16 v1, 0x10

    .line 50
    iput v1, p0, Lcom/adobe/flashruntime/shared/VideoView;->mXmax:I

    .line 51
    iput v1, p0, Lcom/adobe/flashruntime/shared/VideoView;->mYmax:I

    .line 53
    iput-boolean v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mAmCreated:Z

    .line 54
    iput-boolean v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mPlanePositionSet:Z

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mSurface:Landroid/view/Surface;

    .line 60
    iput-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView;->mContext:Landroid/content/Context;

    .line 63
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/adobe/flashruntime/shared/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-virtual {p0}, Lcom/adobe/flashruntime/shared/VideoView;->useOverlay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/adobe/flashruntime/shared/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const v0, 0x32315659

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/flashruntime/shared/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/adobe/flashruntime/shared/VideoView$1;

    invoke-direct {v0, p0}, Lcom/adobe/flashruntime/shared/VideoView$1;-><init>(Lcom/adobe/flashruntime/shared/VideoView;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/flashruntime/shared/VideoView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mPlanePositionSet:Z

    return p0
.end method

.method static synthetic access$100(Lcom/adobe/flashruntime/shared/VideoView;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mXmax:I

    return p0
.end method

.method static synthetic access$200(Lcom/adobe/flashruntime/shared/VideoView;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mXmin:I

    return p0
.end method

.method static synthetic access$300(Lcom/adobe/flashruntime/shared/VideoView;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mYmax:I

    return p0
.end method

.method static synthetic access$400(Lcom/adobe/flashruntime/shared/VideoView;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mYmin:I

    return p0
.end method

.method static synthetic access$500(Lcom/adobe/flashruntime/shared/VideoView;)Landroid/view/Surface;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$502(Lcom/adobe/flashruntime/shared/VideoView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/adobe/flashruntime/shared/VideoView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$602(Lcom/adobe/flashruntime/shared/VideoView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/adobe/flashruntime/shared/VideoView;->mAmCreated:Z

    return p1
.end method

.method private native nativeSetJavaViewReady(JZ)V
.end method


# virtual methods
.method public VideoPlaybackRestarted()V
    .locals 0

    return-void
.end method

.method public getFPInstance()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mCPPInstance:J

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mAmCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/flashruntime/shared/VideoView;->useOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mSurface:Landroid/view/Surface;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyNativeReadyForVideo()V
    .locals 5

    .line 160
    iget-wide v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mCPPInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 161
    iget-wide v0, p0, Lcom/adobe/flashruntime/shared/VideoView;->mCPPInstance:J

    iget-boolean v2, p0, Lcom/adobe/flashruntime/shared/VideoView;->mAmCreated:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/flashruntime/shared/VideoView;->nativeSetJavaViewReady(JZ)V

    :cond_0
    return-void
.end method

.method public setFPInstance(J)V
    .locals 4

    const-string v0, "VideoSurfaceView"

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing FP Instance from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/adobe/flashruntime/shared/VideoView;->mCPPInstance:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-wide p1, p0, Lcom/adobe/flashruntime/shared/VideoView;->mCPPInstance:J

    .line 120
    invoke-virtual {p0}, Lcom/adobe/flashruntime/shared/VideoView;->notifyNativeReadyForVideo()V

    return-void
.end method

.method setNativeInstance(J)V
    .locals 0

    return-void
.end method

.method public setPlanePosition(IIII)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/adobe/flashruntime/shared/VideoView;->mXmin:I

    iput p2, p0, Lcom/adobe/flashruntime/shared/VideoView;->mYmin:I

    iput p3, p0, Lcom/adobe/flashruntime/shared/VideoView;->mXmax:I

    iput p4, p0, Lcom/adobe/flashruntime/shared/VideoView;->mYmax:I

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/adobe/flashruntime/shared/VideoView;->mPlanePositionSet:Z

    .line 133
    invoke-virtual {p0}, Lcom/adobe/flashruntime/shared/VideoView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/adobe/flashruntime/shared/VideoView$2;

    invoke-direct {p2, p0}, Lcom/adobe/flashruntime/shared/VideoView$2;-><init>(Lcom/adobe/flashruntime/shared/VideoView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected useOverlay()Z
    .locals 2

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
