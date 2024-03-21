.class public Lcom/adobe/flashruntime/air/VideoTextureSurface;
.super Ljava/lang/Object;
.source "VideoTextureSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSurfaceTexture"


# instance fields
.field private mAmCreated:Z

.field private mCPPInstance:J

.field private mFrameAvailable:Z

.field private mPlanePositionSet:Z

.field private mSurface:Landroid/view/Surface;

.field private mTextureId:I

.field private mVideoTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mAmCreated:Z

    .line 35
    iput-boolean v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mPlanePositionSet:Z

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mSurface:Landroid/view/Surface;

    .line 37
    iput-boolean v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mFrameAvailable:Z

    .line 40
    iput p1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mTextureId:I

    .line 41
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mTextureId:I

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mVideoTexture:Landroid/graphics/SurfaceTexture;

    .line 42
    iget-object p1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mVideoTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 43
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mVideoTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mAmCreated:Z

    return-void
.end method

.method private native nativeSetJavaTextureSurfaceReady(JZ)V
.end method


# virtual methods
.method public VideoPlaybackRestarted()V
    .locals 0

    return-void
.end method

.method public getFPInstance()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mCPPInstance:J

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mAmCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/flashruntime/air/VideoTextureSurface;->useOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mSurface:Landroid/view/Surface;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyNativeReadyForVideoTexture()V
    .locals 5

    .line 104
    iget-wide v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mCPPInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 105
    iget-wide v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mCPPInstance:J

    iget-boolean v2, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mAmCreated:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/flashruntime/air/VideoTextureSurface;->nativeSetJavaTextureSurfaceReady(JZ)V

    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mFrameAvailable:Z

    .line 59
    invoke-virtual {p0}, Lcom/adobe/flashruntime/air/VideoTextureSurface;->notifyNativeReadyForVideoTexture()V

    return-void
.end method

.method public setFPInstance(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mCPPInstance:J

    return-void
.end method

.method setNativeInstance(J)V
    .locals 0

    return-void
.end method

.method public updateSurfaceTextureTexImage()Z
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mFrameAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mVideoTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 50
    iput-boolean v1, p0, Lcom/adobe/flashruntime/air/VideoTextureSurface;->mFrameAvailable:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public useOverlay()Z
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
