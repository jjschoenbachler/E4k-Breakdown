.class public Lcom/adobe/air/FlashEGL10;
.super Ljava/lang/Object;
.source "FlashEGL10.java"

# interfaces
.implements Lcom/adobe/air/FlashEGL;


# static fields
.field private static EGL_BUFFER_DESTROYED:I = 0x3095

.field private static EGL_BUFFER_PRESERVED:I = 0x3094

.field private static EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static EGL_COVERAGE_BUFFERS_NV:I = 0x30e0

.field private static EGL_COVERAGE_SAMPLES_NV:I = 0x30e1

.field private static EGL_OPENGL_ES2_BIT:I = 0x4

.field private static EGL_SWAP_BEHAVIOR:I = 0x3093

.field private static TAG:Ljava/lang/String; = "FlashEGL10"

.field private static cfgAttrs:[I

.field private static fbPBufferSurfaceAttrs:[I

.field private static fbWindowSurfaceOffAttrs:[I

.field private static fbWindowSurfaceOnAttrs:[I


# instance fields
.field private kAlphaBits:I

.field private kBlueBits:I

.field private kColorBits:I

.field private kConfigId:I

.field private kCsaaSamp:I

.field private kDepthBits:I

.field private kGreenBits:I

.field private kMsaaSamp:I

.field private kNumElements:I

.field private kRedBits:I

.field private kStencilBits:I

.field private kSurfaceTypes:I

.field private kSwapPreserve:I

.field private kSwapPreserveDefault:I

.field private kSwapPreserveOff:I

.field private kSwapPreserveOn:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglConfigCount:I

.field private mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

.field volatile mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglVersion:[I

.field private mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mIsARGBSurface:Z

.field private mIsBufferPreserve:Z

.field private mIsES3Device:Z

.field private mIsGPUOOM:Z

.field private mPbufferConfigCount:I

.field private mPixmapConfigCount:I

.field private mWindowConfigCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x9

    .line 52
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3033

    aput v2, v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v4, 0x2

    const/16 v5, 0x3025

    aput v5, v0, v4

    const/4 v5, 0x3

    aput v2, v0, v5

    const/4 v6, 0x4

    const/16 v7, 0x3026

    aput v7, v0, v6

    const/4 v6, 0x5

    aput v2, v0, v6

    const/4 v2, 0x6

    const/16 v7, 0x3040

    aput v7, v0, v2

    sget v2, Lcom/adobe/air/FlashEGL10;->EGL_OPENGL_ES2_BIT:I

    const/4 v7, 0x7

    aput v2, v0, v7

    const/16 v2, 0x3038

    const/16 v7, 0x8

    aput v2, v0, v7

    sput-object v0, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    .line 62
    new-array v0, v5, [I

    sget v7, Lcom/adobe/air/FlashEGL10;->EGL_SWAP_BEHAVIOR:I

    aput v7, v0, v1

    sget v7, Lcom/adobe/air/FlashEGL10;->EGL_BUFFER_PRESERVED:I

    aput v7, v0, v3

    aput v2, v0, v4

    sput-object v0, Lcom/adobe/air/FlashEGL10;->fbWindowSurfaceOnAttrs:[I

    .line 68
    new-array v0, v5, [I

    sget v5, Lcom/adobe/air/FlashEGL10;->EGL_SWAP_BEHAVIOR:I

    aput v5, v0, v1

    sget v1, Lcom/adobe/air/FlashEGL10;->EGL_BUFFER_DESTROYED:I

    aput v1, v0, v3

    aput v2, v0, v4

    sput-object v0, Lcom/adobe/air/FlashEGL10;->fbWindowSurfaceOffAttrs:[I

    .line 74
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/air/FlashEGL10;->fbPBufferSurfaceAttrs:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3057
        0x40
        0x3056
        0x40
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/adobe/air/FlashEGL10;->kSurfaceTypes:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/adobe/air/FlashEGL10;->kConfigId:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/adobe/air/FlashEGL10;->kRedBits:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kGreenBits:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kBlueBits:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kAlphaBits:I

    const/4 v3, 0x6

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kColorBits:I

    const/4 v3, 0x7

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kDepthBits:I

    const/16 v3, 0x8

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kStencilBits:I

    const/16 v3, 0x9

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kMsaaSamp:I

    const/16 v3, 0xa

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kCsaaSamp:I

    const/16 v3, 0xb

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kSwapPreserve:I

    const/16 v3, 0xc

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->kNumElements:I

    .line 49
    iput v0, p0, Lcom/adobe/air/FlashEGL10;->kSwapPreserveDefault:I

    iput v1, p0, Lcom/adobe/air/FlashEGL10;->kSwapPreserveOn:I

    iput v2, p0, Lcom/adobe/air/FlashEGL10;->kSwapPreserveOff:I

    const/4 v1, 0x0

    .line 845
    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 846
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 847
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 848
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 849
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 850
    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 851
    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 852
    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglVersion:[I

    .line 853
    iput v0, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigCount:I

    .line 854
    iput v0, p0, Lcom/adobe/air/FlashEGL10;->mWindowConfigCount:I

    .line 855
    iput v0, p0, Lcom/adobe/air/FlashEGL10;->mPixmapConfigCount:I

    .line 856
    iput v0, p0, Lcom/adobe/air/FlashEGL10;->mPbufferConfigCount:I

    .line 857
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 858
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsARGBSurface:Z

    .line 859
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsGPUOOM:Z

    .line 860
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsBufferPreserve:Z

    .line 861
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsES3Device:Z

    return-void
.end method

.method private XX(II)I
    .locals 1

    .line 99
    iget v0, p0, Lcom/adobe/air/FlashEGL10;->kNumElements:I

    mul-int p1, p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method private checkEglError(Ljava/lang/String;)I
    .locals 5

    .line 805
    iget-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_2

    .line 808
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsGPUOOM:Z

    if-nez v0, :cond_2

    const/16 v0, 0x3003

    if-ne p1, v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 815
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 816
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 817
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 818
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 822
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 823
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 824
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_1

    .line 832
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 833
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 834
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    :cond_1
    const/4 v0, 0x1

    .line 839
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsGPUOOM:Z

    :cond_2
    return p1
.end method


# virtual methods
.method public ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/FlashEGL10;->IsEmulator()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, v0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 137
    new-array v5, v1, [I

    .line 138
    iget-object v6, v0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v2, v7, v8, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 139
    aget v6, v5, v8

    .line 142
    new-array v7, v6, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 143
    iget-object v9, v0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v9, v2, v7, v6, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 146
    array-length v5, v3

    .line 147
    array-length v9, v3

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_1

    .line 148
    array-length v5, v3

    sub-int/2addr v5, v1

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v6, :cond_7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_3

    add-int/lit8 v12, v11, 0x1

    .line 155
    aget v13, v3, v12

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 157
    new-array v13, v1, [I

    .line 158
    iget-object v14, v0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    aget-object v15, v7, v9

    aget v1, v3, v11

    invoke-interface {v14, v2, v15, v1, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 161
    aget v1, v13, v8

    aget v13, v3, v12

    and-int/2addr v1, v13

    aget v12, v3, v12

    if-ne v1, v12, :cond_3

    :cond_2
    add-int/lit8 v11, v11, 0x2

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    if-ne v11, v5, :cond_6

    if-eqz p3, :cond_4

    move/from16 v1, p4

    if-ge v10, v1, :cond_5

    .line 173
    aget-object v11, v7, v9

    aput-object v11, p3, v10

    goto :goto_2

    :cond_4
    move/from16 v1, p4

    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    move/from16 v1, p4

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 180
    :cond_7
    aput v10, p5, v8

    const/4 v1, 0x1

    return v1
.end method

.method public CreateDummySurfaceAndContext()I
    .locals 15

    .line 319
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3008

    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/16 v2, 0x3000

    if-eq v0, v1, :cond_3

    .line 328
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return v2

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return v2

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 341
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 342
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_3
    const/4 v0, 0x1

    .line 346
    new-array v1, v0, [I

    .line 347
    new-array v9, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 348
    sget-object v3, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    aput v0, v3, v0

    .line 349
    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    const/4 v7, 0x1

    move-object v3, p0

    move-object v6, v9

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL10;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 350
    sget-object v3, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    const/4 v3, 0x0

    .line 352
    aget v1, v1, v3

    const/16 v4, 0x3006

    if-nez v1, :cond_4

    return v4

    .line 361
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v1, v5, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x3

    .line 370
    new-array v6, v5, [I

    sget v7, Lcom/adobe/air/FlashEGL10;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v7, v6, v3

    const/4 v7, 0x2

    aput v7, v6, v0

    const/16 v8, 0x3038

    aput v8, v6, v7

    if-eqz v1, :cond_c

    .line 374
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v10, v9, v3

    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v8, v10, v11, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 375
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v8, :cond_6

    return v4

    :cond_6
    const-string v1, "After creating dummy context for checking gl version"

    .line 380
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v10, v9, v3

    sget-object v11, Lcom/adobe/air/FlashEGL10;->fbPBufferSurfaceAttrs:[I

    invoke-interface {v1, v8, v10, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    const-string v8, "After eglCreatePbufferSurface for checking gl version"

    .line 382
    invoke-direct {p0, v8}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 383
    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v8, :cond_7

    return v4

    .line 388
    :cond_7
    iget-object v8, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v10, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v11, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v8, v10, v1, v1, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string v8, "After eglMakeCurrent for checking gl version"

    .line 389
    invoke-direct {p0, v8}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    const/16 v8, 0x1f02

    .line 390
    invoke-static {v8}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 393
    new-instance v10, Ljava/util/Scanner;

    invoke-direct {v10, v8}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v8, "[^\\w\']+"

    .line 394
    invoke-virtual {v10, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 396
    :cond_8
    :goto_1
    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 397
    invoke-virtual {v10}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 398
    invoke-virtual {v10}, Ljava/util/Scanner;->nextInt()I

    move-result v8

    goto :goto_2

    .line 401
    :cond_9
    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 402
    invoke-virtual {v10}, Ljava/util/Scanner;->next()Ljava/lang/String;

    goto :goto_1

    :cond_a
    const/4 v8, 0x0

    :goto_2
    if-lt v8, v5, :cond_b

    const/4 v8, 0x1

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    .line 412
    :goto_3
    iget-object v10, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v11, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v12, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v13, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v14, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v10, v11, v12, v13, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 414
    iget-object v10, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v11, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v10, v11, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 415
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v10, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v11, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v10, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 416
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_d

    aput v5, v6, v0

    const-string v1, "Before eglCreateContext es3"

    .line 423
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 425
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v8, v9, v3

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v5, v8, v10, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v1, "After eglCreateContext es3"

    .line 426
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v1, v5, :cond_d

    .line 428
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsES3Device:Z

    .line 432
    :cond_d
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v5, :cond_e

    aput v7, v6, v0

    const-string v0, "Before eglCreateContext es2"

    .line 435
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v5, v9, v3

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v5, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "After eglCreateContext es2"

    .line 437
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_e

    return v4

    :cond_e
    const-string v0, "Before eglCreatePbufferSurface"

    .line 445
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v9, v3

    sget-object v5, Lcom/adobe/air/FlashEGL10;->fbPBufferSurfaceAttrs:[I

    invoke-interface {v0, v1, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string v0, "After eglCreatePbufferSurface"

    .line 447
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_f

    return v4

    :cond_f
    const-string v0, "Before eglMakeCurrent"

    .line 455
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 457
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    return v2
.end method

.method public CreateGLContext(Z)I
    .locals 6

    .line 523
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_0

    const/16 p1, 0x3005

    return p1

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/16 v2, 0x3000

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_1

    return v2

    .line 539
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsES3Device:Z

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 540
    :goto_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/adobe/air/FlashEGL10;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    const/16 v0, 0x3038

    aput v0, v3, v1

    if-eqz p1, :cond_3

    .line 544
    iget-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "Before eglCreateContext"

    .line 545
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v4, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "After eglCreateContext"

    .line 547
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string p1, "After eglDestroyContext"

    .line 549
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p1, "Before eglCreateContext"

    .line 553
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 554
    iget-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v1, v4, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string p1, "After eglCreateContext"

    .line 555
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 558
    :goto_1
    iget-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p1, v0, :cond_4

    const/16 p1, 0x3006

    return p1

    .line 562
    :cond_4
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p1, v0, :cond_5

    const-string p1, "Before eglCreatePbufferSurface"

    .line 564
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 565
    iget-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Lcom/adobe/air/FlashEGL10;->fbPBufferSurfaceAttrs:[I

    invoke-interface {p1, v0, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string p1, "After eglCreatePbufferSurface"

    .line 566
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    :cond_5
    return v2
.end method

.method public CreateWindowSurface(Landroid/view/SurfaceView;I)I
    .locals 9

    .line 673
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsGPUOOM:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x3003

    return p1

    .line 676
    :cond_0
    instance-of v0, p1, Lcom/adobe/air/AIRWindowSurfaceView;

    .line 678
    instance-of v1, p1, Lcom/adobe/flashruntime/air/VideoViewAIR;

    const/16 v2, 0x300d

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/adobe/air/AIRStage3DSurfaceView;

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    return v2

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v3, :cond_2

    .line 689
    iget-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 690
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL10;->MakeGLCurrent()I

    move-result p1

    return p1

    .line 695
    :cond_2
    iget v1, p0, Lcom/adobe/air/FlashEGL10;->kSwapPreserveOn:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v1, :cond_3

    const-string p2, "Before eglCreateWindowSurface"

    .line 697
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 698
    iget-object p2, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    sget-object v7, Lcom/adobe/air/FlashEGL10;->fbWindowSurfaceOnAttrs:[I

    invoke-interface {p2, v1, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 699
    iget-object p2, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, v1, :cond_4

    const-string p2, "After eglCreateWindowSurface"

    .line 700
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 703
    :cond_3
    iget v1, p0, Lcom/adobe/air/FlashEGL10;->kSwapPreserveOff:I

    if-ne p2, v1, :cond_4

    const-string p2, "Before eglCreateWindowSurface"

    .line 705
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 706
    iget-object p2, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    sget-object v7, Lcom/adobe/air/FlashEGL10;->fbWindowSurfaceOffAttrs:[I

    invoke-interface {p2, v1, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 707
    iget-object p2, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, v1, :cond_4

    const-string p2, "After eglCreateWindowSurface"

    .line 708
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    .line 712
    :goto_1
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v5, :cond_5

    const-string v1, "Before eglCreateWindowSurface"

    .line 715
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 716
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string v1, "After eglCreateWindowSurface"

    .line 717
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    move-result v1

    const/16 v5, 0x3000

    if-eq v1, v5, :cond_5

    return v1

    .line 722
    :cond_5
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v5, :cond_6

    return v2

    .line 730
    :cond_6
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_7

    .line 734
    check-cast p1, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFlashEGL(Lcom/adobe/air/FlashEGL;)V

    .line 738
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 742
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x22

    .line 743
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 747
    :cond_7
    new-array p1, v3, [I

    aput v4, p1, v4

    .line 749
    iput-boolean v4, p0, Lcom/adobe/air/FlashEGL10;->mIsBufferPreserve:Z

    if-eqz p2, :cond_9

    .line 750
    iget-object p2, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget v2, Lcom/adobe/air/FlashEGL10;->EGL_SWAP_BEHAVIOR:I

    invoke-interface {p2, v0, v1, v2, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 751
    aget p1, p1, v4

    sget p2, Lcom/adobe/air/FlashEGL10;->EGL_BUFFER_PRESERVED:I

    if-ne p1, p2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/adobe/air/FlashEGL10;->mIsBufferPreserve:Z

    .line 757
    :cond_9
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL10;->MakeGLCurrent()I

    move-result p1

    return p1
.end method

.method public DestroyGLContext()Z
    .locals 5

    .line 499
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DestroyGLContext: Before eglMakeCurrent for noSurface"

    .line 504
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string v0, "DestroyGLContext: After eglMakeCurrent"

    .line 506
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 509
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 510
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    const-string v0, "Before eglDestroyContext"

    .line 513
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    const-string v1, "After eglDestroyContext"

    .line 515
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 516
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public DestroyWindowSurface()Z
    .locals 7

    .line 762
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const-string v0, "Before eglMakeCurrent"

    .line 765
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 768
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3000

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const-string v0, "Before eglDestroySurface (window)"

    .line 771
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const-string v0, "After eglDestroySurface (window)"

    .line 773
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_1

    return v2

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v3, :cond_2

    .line 777
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 778
    :cond_2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 780
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v3, :cond_3

    .line 782
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 783
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 784
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    return v2
.end method

.method public FlashEGL10()V
    .locals 2

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 85
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 86
    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 87
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 88
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 89
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 90
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsARGBSurface:Z

    return-void
.end method

.method public GetConfigs(ZZ)[I
    .locals 10

    .line 220
    iget v0, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigCount:I

    iget v1, p0, Lcom/adobe/air/FlashEGL10;->kNumElements:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 221
    new-array v8, v1, [I

    .line 222
    new-array v9, v1, [I

    .line 225
    iget v2, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigCount:I

    new-array v2, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    const-string v2, "Before eglChooseConfig"

    .line 227
    invoke-direct {p0, v2}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 228
    sget-object v2, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    const/4 v3, 0x5

    aput v3, v2, v1

    .line 229
    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    iget v6, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigCount:I

    move-object v2, p0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/air/FlashEGL10;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const-string v2, "After eglChooseConfig"

    .line 230
    invoke-direct {p0, v2}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 231
    sget-object v2, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    const/4 v2, 0x0

    .line 233
    aget v3, v8, v2

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigCount:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    .line 236
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    const/16 v8, 0x3033

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 237
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kSurfaceTypes:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 239
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kConfigId:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aput v4, v0, v5

    .line 241
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    const/16 v8, 0x3024

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 242
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kRedBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 244
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    const/16 v8, 0x3023

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 245
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kGreenBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 247
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    const/16 v8, 0x3022

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 248
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kBlueBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 250
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    const/16 v8, 0x3021

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 251
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kAlphaBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 253
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    const/16 v8, 0x3020

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 254
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kColorBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 256
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    const/16 v8, 0x3025

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 257
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kDepthBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 259
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    const/16 v8, 0x3026

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 260
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kStencilBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 262
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kCsaaSamp:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aput v2, v0, v5

    .line 263
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kMsaaSamp:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aput v2, v0, v5

    if-eqz p1, :cond_0

    .line 266
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    sget v8, Lcom/adobe/air/FlashEGL10;->EGL_COVERAGE_SAMPLES_NV:I

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 267
    aget v5, v9, v2

    if-eq v5, v1, :cond_1

    .line 268
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kCsaaSamp:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    goto :goto_1

    .line 271
    :cond_0
    iget-object v5, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v7, v7, v4

    const/16 v8, 0x3031

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 272
    aget v5, v9, v2

    if-eq v5, v1, :cond_1

    .line 273
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kMsaaSamp:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    .line 278
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kSwapPreserve:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglVersion:[I

    aget v6, v6, v2

    if-gt v6, v1, :cond_2

    iget-object v6, p0, Lcom/adobe/air/FlashEGL10;->mEglVersion:[I

    aget v6, v6, v1

    const/4 v7, 0x3

    if-le v6, v7, :cond_3

    :cond_2
    iget v6, p0, Lcom/adobe/air/FlashEGL10;->kSurfaceTypes:I

    invoke-direct {p0, v4, v6}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v6

    aget v6, v0, v6

    sget v7, Lcom/adobe/air/FlashEGL10;->EGL_BUFFER_PRESERVED:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    aput v6, v0, v5

    goto :goto_3

    .line 281
    :cond_4
    iget v5, p0, Lcom/adobe/air/FlashEGL10;->kSwapPreserve:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL10;->XX(II)I

    move-result v5

    aput v2, v0, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public GetNumConfigs()[I
    .locals 12

    const/4 v0, 0x4

    .line 186
    new-array v1, v0, [I

    const/4 v2, 0x1

    .line 187
    new-array v9, v2, [I

    .line 190
    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL10;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v10, 0x0

    .line 191
    aget v3, v9, v10

    aput v3, v1, v10

    iput v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigCount:I

    .line 195
    sget-object v3, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    aput v0, v3, v2

    .line 196
    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL10;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 197
    aget v0, v9, v10

    aput v0, v1, v2

    iput v0, p0, Lcom/adobe/air/FlashEGL10;->mWindowConfigCount:I

    .line 201
    sget-object v0, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    const/4 v11, 0x2

    aput v11, v0, v2

    .line 202
    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL10;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 203
    aget v0, v9, v10

    aput v0, v1, v11

    iput v0, p0, Lcom/adobe/air/FlashEGL10;->mPixmapConfigCount:I

    .line 207
    sget-object v0, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    aput v2, v0, v2

    .line 208
    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL10;->ChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 209
    aget v0, v9, v10

    const/4 v3, 0x3

    aput v0, v1, v3

    iput v0, p0, Lcom/adobe/air/FlashEGL10;->mPbufferConfigCount:I

    .line 213
    sget-object v0, Lcom/adobe/air/FlashEGL10;->cfgAttrs:[I

    const/4 v3, -0x1

    aput v3, v0, v2

    return-object v1
.end method

.method public GetSurfaceHeight()I
    .locals 5

    const/4 v0, 0x1

    .line 117
    new-array v0, v0, [I

    .line 118
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3056

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    const/4 v1, 0x0

    .line 120
    aget v0, v0, v1

    return v0
.end method

.method public GetSurfaceWidth()I
    .locals 5

    const/4 v0, 0x1

    .line 109
    new-array v0, v0, [I

    .line 110
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3057

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    const/4 v1, 0x0

    .line 112
    aget v0, v0, v1

    return v0
.end method

.method public HasGLContext()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public InitEGL()I
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/16 v2, 0x3000

    if-eq v0, v1, :cond_0

    return v2

    .line 473
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const-string v0, "Before eglGetDisplay"

    .line 477
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const-string v0, "After eglGetDisplay"

    .line 479
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    .line 485
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglVersion:[I

    const-string v0, "Before eglInitialize"

    .line 486
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglVersion:[I

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const-string v0, "After eglInitialize"

    .line 488
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public IsARGBSurface()Z
    .locals 1

    .line 795
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsARGBSurface:Z

    return v0
.end method

.method public IsBufferPreserve()Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL10;->mIsBufferPreserve:Z

    return v0
.end method

.method public IsEmulator()Z
    .locals 2

    .line 125
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public MakeGLCurrent()I
    .locals 5

    .line 642
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3006

    return v0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v2, 0x300d

    if-ne v0, v1, :cond_1

    return v2

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3008

    return v0

    .line 660
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_3

    return v2

    :cond_3
    const-string v0, "Before eglMakeCurrent"

    .line 664
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 666
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ReleaseGPUResources()V
    .locals 5

    .line 587
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Before eglMakeCurrent"

    .line 593
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 595
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    monitor-enter v0

    :try_start_0
    const-string v1, "Before eglDestroySurface"

    .line 600
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 602
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 603
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    const-string v1, "After eglDestroySurface (window)"

    .line 605
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 606
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    const-string v0, "Before eglDestroySurface (pbuffer)"

    .line 610
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const-string v0, "After eglDestroySurface (pbuffer)"

    .line 612
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 613
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_2
    const-string v0, "Before eglDestroyContext"

    .line 617
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const-string v0, "After eglDestroyContext"

    .line 619
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 621
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 622
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    :catchall_0
    move-exception v1

    .line 606
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public SetConfig(I)V
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 p1, 0x1

    .line 292
    new-array p1, p1, [I

    .line 293
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v3, 0x3024

    invoke-interface {v0, v1, v2, v3, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v0, 0x0

    .line 294
    aget v1, p1, v0

    .line 295
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3023

    invoke-interface {v1, v2, v3, v4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 296
    aget v1, p1, v0

    .line 297
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3022

    invoke-interface {v1, v2, v3, v4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 298
    aget v1, p1, v0

    .line 299
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3021

    invoke-interface {v1, v2, v3, v4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 300
    aget v1, p1, v0

    .line 301
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3025

    invoke-interface {v1, v2, v3, v4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 302
    aget v1, p1, v0

    .line 303
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3026

    invoke-interface {v1, v2, v3, v4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 304
    aget v1, p1, v0

    .line 305
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3031

    invoke-interface {v1, v2, v3, v4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 306
    aget v1, p1, v0

    .line 307
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3032

    invoke-interface {v1, v2, v3, v4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 308
    aget v1, p1, v0

    .line 309
    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL10;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3033

    invoke-interface {v1, v2, v3, v4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 310
    aget p1, p1, v0

    return-void
.end method

.method public SwapEGLBuffers()V
    .locals 3

    .line 631
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL10;->MakeGLCurrent()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Before eglSwapBuffers"

    .line 635
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL10;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const-string v0, "After eglSwapBuffers"

    .line 637
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL10;->checkEglError(Ljava/lang/String;)I

    return-void
.end method

.method public TerminateEGL()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 579
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL10;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-void
.end method
