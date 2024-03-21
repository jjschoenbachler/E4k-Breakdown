.class public Lcom/adobe/air/FlashEGL14;
.super Ljava/lang/Object;
.source "FlashEGL14.java"

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

.field private static final MAX_CONFIGS:I = 0x64

.field private static TAG:Ljava/lang/String; = "FlashEGL14"

.field private static cfgAttrs:[I

.field private static fbPBufferSurfaceAttrs:[I

.field private static fbWindowSurfaceDefAttrs:[I

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

.field private mEgl:Landroid/opengl/EGL14;

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglConfigCount:I

.field private mEglConfigList:[Landroid/opengl/EGLConfig;

.field volatile mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglPbufferSurface:Landroid/opengl/EGLSurface;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mEglVersion:[I

.field private mEglWindowSurface:Landroid/opengl/EGLSurface;

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

    .line 53
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

    sget v2, Lcom/adobe/air/FlashEGL14;->EGL_OPENGL_ES2_BIT:I

    const/4 v7, 0x7

    aput v2, v0, v7

    const/16 v2, 0x3038

    const/16 v7, 0x8

    aput v2, v0, v7

    sput-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    .line 63
    new-array v0, v5, [I

    sget v7, Lcom/adobe/air/FlashEGL14;->EGL_SWAP_BEHAVIOR:I

    aput v7, v0, v1

    sget v7, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_PRESERVED:I

    aput v7, v0, v3

    aput v2, v0, v4

    sput-object v0, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceOnAttrs:[I

    .line 69
    new-array v0, v5, [I

    sget v5, Lcom/adobe/air/FlashEGL14;->EGL_SWAP_BEHAVIOR:I

    aput v5, v0, v1

    sget v5, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_DESTROYED:I

    aput v5, v0, v3

    aput v2, v0, v4

    sput-object v0, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceOffAttrs:[I

    .line 75
    new-array v0, v3, [I

    aput v2, v0, v1

    sput-object v0, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceDefAttrs:[I

    .line 81
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/air/FlashEGL14;->fbPBufferSurfaceAttrs:[I

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

    .line 45
    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kSurfaceTypes:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/adobe/air/FlashEGL14;->kConfigId:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/adobe/air/FlashEGL14;->kRedBits:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kGreenBits:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kBlueBits:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kAlphaBits:I

    const/4 v3, 0x6

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kColorBits:I

    const/4 v3, 0x7

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kDepthBits:I

    const/16 v3, 0x8

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kStencilBits:I

    const/16 v3, 0x9

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kMsaaSamp:I

    const/16 v3, 0xa

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kCsaaSamp:I

    const/16 v3, 0xb

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserve:I

    const/16 v3, 0xc

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->kNumElements:I

    .line 50
    iput v0, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveDefault:I

    iput v1, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveOn:I

    iput v2, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveOff:I

    const/4 v1, 0x0

    .line 847
    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    .line 848
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 849
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 850
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 851
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    .line 852
    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 853
    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    .line 854
    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    .line 855
    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    .line 856
    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mWindowConfigCount:I

    .line 857
    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mPixmapConfigCount:I

    .line 858
    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mPbufferConfigCount:I

    .line 859
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 860
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsARGBSurface:Z

    .line 861
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsGPUOOM:Z

    .line 862
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsBufferPreserve:Z

    .line 863
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsES3Device:Z

    return-void
.end method

.method private XX(II)I
    .locals 1

    .line 106
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->kNumElements:I

    mul-int p1, p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method private checkEglError(Ljava/lang/String;)I
    .locals 4

    .line 807
    iget-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_2

    .line 810
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsGPUOOM:Z

    if-nez v0, :cond_2

    const/16 v0, 0x3003

    if-ne p1, v0, :cond_2

    .line 815
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 817
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 818
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 819
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 820
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 824
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 825
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 826
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_1

    .line 834
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 835
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 836
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    :cond_1
    const/4 v0, 0x1

    .line 841
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsGPUOOM:Z

    :cond_2
    return p1
.end method


# virtual methods
.method public ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/FlashEGL14;->IsEmulator()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, v0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 144
    new-array v3, v1, [I

    .line 145
    iget-object v5, v0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object v9, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/EGL14;->eglGetConfigs(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;II[II)Z

    const/4 v11, 0x0

    .line 146
    aget v12, v3, v11

    .line 149
    new-array v13, v12, [Landroid/opengl/EGLConfig;

    .line 150
    iget-object v5, v0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    move-object/from16 v5, p1

    move-object v6, v13

    move v8, v12

    invoke-static/range {v5 .. v10}, Landroid/opengl/EGL14;->eglGetConfigs(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;II[II)Z

    .line 153
    array-length v3, v2

    .line 154
    array-length v5, v2

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 155
    array-length v3, v2

    sub-int/2addr v3, v1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v12, :cond_8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_3

    add-int/lit8 v8, v7, 0x1

    .line 162
    aget v9, v2, v8

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 164
    new-array v9, v1, [I

    .line 165
    iget-object v10, v0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    aget-object v10, v13, v5

    aget v14, v2, v7

    move-object/from16 v15, p1

    invoke-static {v15, v10, v14, v9, v11}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 168
    aget v9, v9, v11

    aget v10, v2, v8

    and-int/2addr v9, v10

    aget v8, v2, v8

    if-ne v9, v8, :cond_4

    goto :goto_2

    :cond_2
    move-object/from16 v15, p1

    :goto_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_3
    move-object/from16 v15, p1

    :cond_4
    if-ne v7, v3, :cond_7

    if-eqz p3, :cond_5

    move/from16 v7, p4

    if-ge v6, v7, :cond_6

    .line 180
    aget-object v8, v13, v5

    aput-object v8, p3, v6

    goto :goto_3

    :cond_5
    move/from16 v7, p4

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    move/from16 v7, p4

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 187
    :cond_8
    aput v6, p5, v11

    return v1
.end method

.method public CreateDummySurfaceAndContext()I
    .locals 14

    .line 323
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3008

    return v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v2, 0x3000

    if-eq v0, v1, :cond_3

    .line 332
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return v2

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 340
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return v2

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 345
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 346
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    :cond_3
    const/4 v0, 0x1

    .line 350
    new-array v1, v0, [I

    .line 351
    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 352
    sget-object v3, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    aput v0, v3, v0

    .line 353
    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    const/4 v7, 0x1

    move-object v3, p0

    move-object v6, v9

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 354
    sget-object v3, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    const/4 v3, 0x0

    .line 356
    aget v1, v1, v3

    const/16 v4, 0x3006

    if-nez v1, :cond_4

    return v4

    .line 365
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

    .line 375
    new-array v6, v5, [I

    sget v7, Lcom/adobe/air/FlashEGL14;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v7, v6, v3

    const/4 v7, 0x2

    aput v7, v6, v0

    const/16 v8, 0x3038

    aput v8, v6, v7

    if-eqz v1, :cond_c

    .line 380
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v8, v9, v3

    sget-object v10, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v8, v10, v6, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 381
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v1, v8, :cond_6

    return v4

    :cond_6
    const-string v1, "After creating dummy context for checking gl version"

    .line 386
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v8, v9, v3

    sget-object v10, Lcom/adobe/air/FlashEGL14;->fbPBufferSurfaceAttrs:[I

    invoke-static {v1, v8, v10, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    const-string v8, "After eglCreatePbufferSurface for checking gl version"

    .line 388
    invoke-direct {p0, v8}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 389
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v1, v8, :cond_7

    return v4

    .line 394
    :cond_7
    iget-object v8, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v8, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v10, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v8, v1, v1, v10}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v8, "After eglMakeCurrent for checking gl version"

    .line 395
    invoke-direct {p0, v8}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    const/16 v8, 0x1f02

    .line 396
    invoke-static {v8}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 399
    new-instance v10, Ljava/util/Scanner;

    invoke-direct {v10, v8}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v8, "[^\\w\']+"

    .line 400
    invoke-virtual {v10, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 402
    :cond_8
    :goto_1
    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 403
    invoke-virtual {v10}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 404
    invoke-virtual {v10}, Ljava/util/Scanner;->nextInt()I

    move-result v8

    goto :goto_2

    .line 407
    :cond_9
    invoke-virtual {v10}, Ljava/util/Scanner;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 408
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

    .line 418
    :goto_3
    iget-object v10, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v10, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v11, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v12, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v13, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v10, v11, v12, v13}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 420
    iget-object v10, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v10, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v10, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 421
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v10, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v10}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 422
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_d

    aput v5, v6, v0

    const-string v1, "Before eglCreateContext es3"

    .line 428
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v5, v9, v3

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v5, v8, v6, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    const-string v1, "After eglCreateContext es3"

    .line 431
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v5, :cond_d

    .line 433
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsES3Device:Z

    .line 436
    :cond_d
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v1, v5, :cond_e

    aput v7, v6, v0

    const-string v0, "Before eglCreateContext es2"

    .line 439
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v9, v3

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v5, v6, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    const-string v0, "After eglCreateContext es2"

    .line 441
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_e

    return v4

    :cond_e
    const-string v0, "Before eglCreatePbufferSurface"

    .line 449
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v9, v3

    sget-object v5, Lcom/adobe/air/FlashEGL14;->fbPBufferSurfaceAttrs:[I

    invoke-static {v0, v1, v5, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    const-string v0, "After eglCreatePbufferSurface"

    .line 451
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_f

    return v4

    :cond_f
    const-string v0, "Before eglMakeCurrent"

    .line 459
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 461
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    return v2
.end method

.method public CreateGLContext(Z)I
    .locals 6

    .line 527
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_0

    const/16 p1, 0x3005

    return p1

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v2, 0x3000

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_1

    return v2

    .line 543
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsES3Device:Z

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 544
    :goto_0
    new-array v3, v3, [I

    sget v4, Lcom/adobe/air/FlashEGL14;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v0, v3, v4

    const/16 v0, 0x3038

    aput v0, v3, v1

    if-eqz p1, :cond_3

    .line 548
    iget-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    const-string v0, "Before eglCreateContext"

    .line 549
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v0, v1, p1, v3, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    const-string v0, "After eglCreateContext"

    .line 551
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    const-string p1, "After eglDestroyContext"

    .line 553
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p1, "Before eglCreateContext"

    .line 557
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 558
    iget-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v0, v1, v3, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    const-string p1, "After eglCreateContext"

    .line 559
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 562
    :goto_1
    iget-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne p1, v0, :cond_4

    const/16 p1, 0x3006

    return p1

    .line 566
    :cond_4
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    if-ne p1, v0, :cond_5

    const-string p1, "Before eglCreatePbufferSurface"

    .line 568
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 569
    iget-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v1, Lcom/adobe/air/FlashEGL14;->fbPBufferSurfaceAttrs:[I

    invoke-static {p1, v0, v1, v5}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    const-string p1, "After eglCreatePbufferSurface"

    .line 570
    invoke-direct {p0, p1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    :cond_5
    return v2
.end method

.method public CreateWindowSurface(Landroid/view/SurfaceView;I)I
    .locals 7

    .line 673
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsGPUOOM:Z

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
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v3, :cond_2

    .line 689
    iget-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 690
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL14;->MakeGLCurrent()I

    move-result p1

    return p1

    .line 695
    :cond_2
    iget v1, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveOn:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v1, :cond_3

    const-string p2, "Before eglCreateWindowSurface"

    .line 697
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 698
    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    sget-object v6, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceOnAttrs:[I

    invoke-static {p2, v1, v5, v6, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 699
    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p2, v1, :cond_4

    const-string p2, "After eglCreateWindowSurface"

    .line 700
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 703
    :cond_3
    iget v1, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserveOff:I

    if-ne p2, v1, :cond_4

    const-string p2, "Before eglCreateWindowSurface"

    .line 705
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 706
    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    sget-object v6, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceOffAttrs:[I

    invoke-static {p2, v1, v5, v6, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 707
    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p2, v1, :cond_4

    const-string p2, "After eglCreateWindowSurface"

    .line 708
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    .line 712
    :goto_1
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v1, v5, :cond_6

    const-string p2, "Before eglCreateWindowSurface"

    .line 715
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 716
    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    sget-object v6, Lcom/adobe/air/FlashEGL14;->fbWindowSurfaceDefAttrs:[I

    invoke-static {p2, v1, v5, v6, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    const-string p2, "After eglCreateWindowSurface"

    .line 717
    invoke-direct {p0, p2}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result p2

    const/16 v1, 0x3000

    if-eq p2, v1, :cond_5

    return p2

    :cond_5
    const/4 p2, 0x1

    .line 724
    :cond_6
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v1, v5, :cond_7

    return v2

    .line 732
    :cond_7
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_8

    .line 736
    check-cast p1, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFlashEGL(Lcom/adobe/air/FlashEGL;)V

    .line 740
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 744
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x22

    .line 745
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 749
    :cond_8
    new-array p1, v3, [I

    aput v4, p1, v4

    .line 751
    iput-boolean v4, p0, Lcom/adobe/air/FlashEGL14;->mIsBufferPreserve:Z

    if-eqz p2, :cond_a

    .line 752
    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object p2, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    sget v1, Lcom/adobe/air/FlashEGL14;->EGL_SWAP_BEHAVIOR:I

    invoke-static {p2, v0, v1, p1, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 753
    aget p1, p1, v4

    sget p2, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_PRESERVED:I

    if-ne p1, p2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/adobe/air/FlashEGL14;->mIsBufferPreserve:Z

    .line 759
    :cond_a
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL14;->MakeGLCurrent()I

    move-result p1

    return p1
.end method

.method public DestroyGLContext()Z
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DestroyGLContext: Before eglMakeCurrent for noSurface"

    .line 508
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v0, "DestroyGLContext: After eglMakeCurrent"

    .line 510
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 513
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 514
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    :cond_1
    const-string v0, "Before eglDestroyContext"

    .line 517
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v1, "After eglDestroyContext"

    .line 519
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 520
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public DestroyWindowSurface()Z
    .locals 6

    .line 764
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const-string v0, "Before eglMakeCurrent"

    .line 767
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 770
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3000

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const-string v0, "Before eglDestroySurface (window)"

    .line 773
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const-string v0, "After eglDestroySurface (window)"

    .line 775
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_1

    return v2

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    if-ne v0, v3, :cond_2

    .line 779
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 780
    :cond_2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 782
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v3, :cond_3

    .line 784
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 785
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 786
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    return v2
.end method

.method public FlashEGL14()V
    .locals 2

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    .line 92
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 93
    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 94
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 95
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 96
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    .line 97
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsARGBSurface:Z

    return-void
.end method

.method public GetConfigs(ZZ)[I
    .locals 10

    .line 228
    iget v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    iget v1, p0, Lcom/adobe/air/FlashEGL14;->kNumElements:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 229
    new-array v8, v1, [I

    .line 230
    new-array v9, v1, [I

    .line 233
    iget v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    new-array v2, v2, [Landroid/opengl/EGLConfig;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    const-string v2, "Before eglChooseConfig"

    .line 235
    invoke-direct {p0, v2}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 236
    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    iget v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    move-object v2, p0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    const-string v2, "After eglChooseConfig"

    .line 237
    invoke-direct {p0, v2}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 239
    aget v3, v8, v2

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    .line 242
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    const/16 v7, 0x3033

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 243
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kSurfaceTypes:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 245
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kConfigId:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aput v4, v0, v5

    .line 247
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    const/16 v7, 0x3024

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 248
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kRedBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 250
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    const/16 v7, 0x3023

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 251
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kGreenBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 253
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    const/16 v7, 0x3022

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 254
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kBlueBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 256
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    const/16 v7, 0x3021

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 257
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kAlphaBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 259
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    const/16 v7, 0x3020

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 260
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kColorBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 262
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    const/16 v7, 0x3025

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 263
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kDepthBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 265
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    const/16 v7, 0x3026

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 266
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kStencilBits:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    .line 268
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kCsaaSamp:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aput v2, v0, v5

    .line 269
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kMsaaSamp:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aput v2, v0, v5

    if-eqz p1, :cond_0

    .line 272
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    sget v7, Lcom/adobe/air/FlashEGL14;->EGL_COVERAGE_SAMPLES_NV:I

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 273
    aget v5, v9, v2

    if-eq v5, v1, :cond_1

    .line 274
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kCsaaSamp:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    goto :goto_1

    .line 277
    :cond_0
    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object v6, v6, v4

    const/16 v7, 0x3031

    invoke-static {v5, v6, v7, v9, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 278
    aget v5, v9, v2

    if-eq v5, v1, :cond_1

    .line 279
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kMsaaSamp:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aget v6, v9, v2

    aput v6, v0, v5

    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    .line 284
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserve:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    aget v6, v6, v2

    if-gt v6, v1, :cond_2

    iget-object v6, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    aget v6, v6, v1

    const/4 v7, 0x3

    if-le v6, v7, :cond_3

    :cond_2
    iget v6, p0, Lcom/adobe/air/FlashEGL14;->kSurfaceTypes:I

    invoke-direct {p0, v4, v6}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v6

    aget v6, v0, v6

    sget v7, Lcom/adobe/air/FlashEGL14;->EGL_BUFFER_PRESERVED:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    aput v6, v0, v5

    goto :goto_3

    .line 287
    :cond_4
    iget v5, p0, Lcom/adobe/air/FlashEGL14;->kSwapPreserve:I

    invoke-direct {p0, v4, v5}, Lcom/adobe/air/FlashEGL14;->XX(II)I

    move-result v5

    aput v2, v0, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public GetNumConfigs()[I
    .locals 13

    const/4 v0, 0x4

    .line 193
    new-array v1, v0, [I

    const/4 v2, 0x1

    .line 194
    new-array v9, v2, [I

    const/16 v3, 0x64

    .line 195
    new-array v10, v3, [Landroid/opengl/EGLConfig;

    .line 198
    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    const/16 v7, 0x64

    move-object v3, p0

    move-object v6, v10

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    const/4 v11, 0x0

    .line 199
    aget v3, v9, v11

    aput v3, v1, v11

    iput v3, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigCount:I

    .line 203
    sget-object v3, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    aput v0, v3, v2

    .line 204
    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 205
    aget v0, v9, v11

    aput v0, v1, v2

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mWindowConfigCount:I

    .line 209
    sget-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    const/4 v12, 0x2

    aput v12, v0, v2

    .line 210
    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 211
    aget v0, v9, v11

    aput v0, v1, v12

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mPixmapConfigCount:I

    .line 215
    sget-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    aput v2, v0, v2

    .line 216
    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v5, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/air/FlashEGL14;->ChooseConfig(Landroid/opengl/EGLDisplay;[I[Landroid/opengl/EGLConfig;I[I)Z

    .line 217
    aget v0, v9, v11

    const/4 v3, 0x3

    aput v0, v1, v3

    iput v0, p0, Lcom/adobe/air/FlashEGL14;->mPbufferConfigCount:I

    .line 221
    sget-object v0, Lcom/adobe/air/FlashEGL14;->cfgAttrs:[I

    const/4 v3, -0x1

    aput v3, v0, v2

    return-object v1
.end method

.method public GetSurfaceHeight()I
    .locals 5

    const/4 v0, 0x1

    .line 124
    new-array v0, v0, [I

    .line 125
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v3, 0x0

    const/16 v4, 0x3056

    invoke-static {v1, v2, v4, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 127
    aget v0, v0, v3

    return v0
.end method

.method public GetSurfaceWidth()I
    .locals 5

    const/4 v0, 0x1

    .line 116
    new-array v0, v0, [I

    .line 117
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v3, 0x0

    const/16 v4, 0x3057

    invoke-static {v1, v2, v4, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 119
    aget v0, v0, v3

    return v0
.end method

.method public HasGLContext()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public InitEGL()I
    .locals 6

    .line 470
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v2, 0x3000

    if-eq v0, v1, :cond_0

    return v2

    .line 477
    :cond_0
    new-instance v0, Landroid/opengl/EGL14;

    invoke-direct {v0}, Landroid/opengl/EGL14;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    const-string v0, "Before eglGetDisplay"

    .line 481
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const-string v1, "After eglGetDisplay"

    .line 483
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    .line 489
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    const-string v1, "Before eglInitialize"

    .line 490
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    iget-object v4, p0, Lcom/adobe/air/FlashEGL14;->mEglVersion:[I

    const/4 v5, 0x1

    invoke-static {v1, v3, v0, v4, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    const-string v0, "After eglInitialize"

    .line 492
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public IsARGBSurface()Z
    .locals 1

    .line 797
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsARGBSurface:Z

    return v0
.end method

.method public IsBufferPreserve()Z
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL14;->mIsBufferPreserve:Z

    return v0
.end method

.method public IsEmulator()Z
    .locals 2

    .line 132
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
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3006

    return v0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x300d

    return v0

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3008

    return v0

    :cond_2
    const-string v0, "Before eglMakeCurrent"

    .line 664
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 666
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ReleaseGPUResources()V
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Before eglMakeCurrent"

    .line 597
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v0, "After eglMakeCurrent"

    .line 599
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    monitor-enter v0

    :try_start_0
    const-string v1, "Before eglDestroySurface"

    .line 604
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 606
    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 607
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglWindowSurface:Landroid/opengl/EGLSurface;

    :cond_1
    const-string v1, "After eglDestroySurface (window)"

    .line 609
    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 610
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_2

    const-string v0, "Before eglDestroySurface (pbuffer)"

    .line 614
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const-string v0, "After eglDestroySurface (pbuffer)"

    .line 616
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 617
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglPbufferSurface:Landroid/opengl/EGLSurface;

    :cond_2
    const-string v0, "Before eglDestroyContext"

    .line 621
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    const-string v0, "After eglDestroyContext"

    .line 623
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 625
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglContext:Landroid/opengl/EGLContext;

    .line 626
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    return-void

    :catchall_0
    move-exception v1

    .line 610
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public SetConfig(I)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglConfigList:[Landroid/opengl/EGLConfig;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/4 p1, 0x1

    .line 298
    new-array p1, p1, [I

    .line 299
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/4 v2, 0x0

    const/16 v3, 0x3024

    invoke-static {v0, v1, v3, p1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 300
    aget v0, p1, v2

    .line 301
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3023

    invoke-static {v0, v1, v3, p1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 302
    aget v0, p1, v2

    .line 303
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3022

    invoke-static {v0, v1, v3, p1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 304
    aget v0, p1, v2

    .line 305
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3021

    invoke-static {v0, v1, v3, p1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 306
    aget v0, p1, v2

    .line 307
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3025

    invoke-static {v0, v1, v3, p1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 308
    aget v0, p1, v2

    .line 309
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3026

    invoke-static {v0, v1, v3, p1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 310
    aget v0, p1, v2

    .line 311
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3031

    invoke-static {v0, v1, v3, p1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 312
    aget v0, p1, v2

    .line 313
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglConfig:Landroid/opengl/EGLConfig;

    const/16 v3, 0x3032

    invoke-static {v0, v1, v3, p1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    .line 314
    aget p1, p1, v2

    return-void
.end method

.method public SwapEGLBuffers()V
    .locals 2

    .line 635
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL14;->MakeGLCurrent()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Before eglSwapBuffers"

    .line 639
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL14;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const-string v0, "After eglSwapBuffers"

    .line 641
    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL14;->checkEglError(Ljava/lang/String;)I

    return-void
.end method

.method public TerminateEGL()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEgl:Landroid/opengl/EGL14;

    iget-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 583
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL14;->mEglDisplay:Landroid/opengl/EGLDisplay;

    return-void
.end method
