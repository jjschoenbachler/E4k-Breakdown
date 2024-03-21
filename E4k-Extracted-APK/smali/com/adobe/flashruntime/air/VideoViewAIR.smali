.class public Lcom/adobe/flashruntime/air/VideoViewAIR;
.super Lcom/adobe/flashruntime/shared/VideoView;
.source "VideoViewAIR.java"


# static fields
.field private static kLogTag:Ljava/lang/String; = "VideoViewAIR"


# instance fields
.field protected mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private mVideoFlashEGL:Lcom/adobe/air/FlashEGL;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/adobe/flashruntime/shared/VideoView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/adobe/flashruntime/air/VideoViewAIR;->mVideoFlashEGL:Lcom/adobe/air/FlashEGL;

    .line 46
    iput-object p2, p0, Lcom/adobe/flashruntime/air/VideoViewAIR;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 47
    iget-object p1, p0, Lcom/adobe/flashruntime/air/VideoViewAIR;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 p2, 0x7

    invoke-virtual {p1, p0, p2}, Lcom/adobe/air/AndroidActivityWrapper;->registerPlane(Landroid/view/SurfaceView;I)V

    .line 48
    iget-object p1, p0, Lcom/adobe/flashruntime/air/VideoViewAIR;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 55
    invoke-virtual {p0}, Lcom/adobe/flashruntime/air/VideoViewAIR;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lcom/adobe/flashruntime/air/VideoViewAIR$1;

    invoke-direct {p2, p0}, Lcom/adobe/flashruntime/air/VideoViewAIR$1;-><init>(Lcom/adobe/flashruntime/air/VideoViewAIR;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/flashruntime/air/VideoViewAIR;JII)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/flashruntime/air/VideoViewAIR;->nativeSetSurfaceSize(JII)V

    return-void
.end method

.method private native nativeSetSurfaceSize(JII)V
.end method


# virtual methods
.method public getVideoEgl()Lcom/adobe/air/FlashEGL;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoViewAIR;->mVideoFlashEGL:Lcom/adobe/air/FlashEGL;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/adobe/air/FlashEGLFactory;->CreateFlashEGL()Lcom/adobe/air/FlashEGL;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/flashruntime/air/VideoViewAIR;->mVideoFlashEGL:Lcom/adobe/air/FlashEGL;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoViewAIR;->mVideoFlashEGL:Lcom/adobe/air/FlashEGL;

    return-object v0
.end method
