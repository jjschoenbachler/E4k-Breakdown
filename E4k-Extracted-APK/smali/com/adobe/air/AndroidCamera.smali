.class public Lcom/adobe/air/AndroidCamera;
.super Ljava/lang/Object;
.source "AndroidCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_POSITION_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidCamera"

.field private static sAreMultipleCamerasSupportedInitialized:Z

.field private static sAreMultipleCamerasSupportedOnDevice:Z

.field private static sCameraInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sMIDGetCameraInfo:Ljava/lang/reflect/Method;

.field private static sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

.field private static sMIDOpen:Ljava/lang/reflect/Method;

.field private static sMIDOpenWithCameraID:Ljava/lang/reflect/Method;


# instance fields
.field private mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

.field private mBuffer1:[B

.field private mBuffer2:[B

.field private mCallbackBuffer:[B

.field private mCallbacksRegistered:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCapturing:Z

.field private mClientId:J

.field private mInitialized:Z

.field private mPreviewSurfaceValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const-wide/16 v1, 0x0

    .line 79
    iput-wide v1, p0, Lcom/adobe/air/AndroidCamera;->mClientId:J

    const/4 v1, 0x0

    .line 80
    iput v1, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    .line 81
    iput-boolean v1, p0, Lcom/adobe/air/AndroidCamera;->mInitialized:Z

    .line 82
    iput-boolean v1, p0, Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z

    const/4 v2, 0x1

    .line 83
    iput-boolean v2, p0, Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z

    .line 84
    iput-boolean v1, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z

    .line 85
    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    .line 86
    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    .line 87
    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    .line 88
    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    .line 112
    iput-wide p1, p0, Lcom/adobe/air/AndroidCamera;->mClientId:J

    .line 114
    invoke-static {}, Lcom/adobe/air/AndroidCamera;->areMultipleCamerasSupportedOnDevice()Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidCamera;)J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/adobe/air/AndroidCamera;->mClientId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidCamera;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z

    return p0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidCamera;J[B)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidCamera;->nativeOnFrameCaptured(J[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidCamera;)[B
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    return-object p0
.end method

.method static synthetic access$302(Lcom/adobe/air/AndroidCamera;[B)[B
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidCamera;)[B
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidCamera;)[B
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    return-object p0
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidCamera;)Landroid/hardware/Camera;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$700(Lcom/adobe/air/AndroidCamera;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z

    return p0
.end method

.method static synthetic access$702(Lcom/adobe/air/AndroidCamera;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/air/AndroidCamera;J)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidCamera;->nativeOnCanOpenCamera(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/air/AndroidCamera;J)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidCamera;->nativeOnShouldCloseCamera(J)V

    return-void
.end method

.method public static areMultipleCamerasSupportedOnDevice()Z
    .locals 6

    .line 121
    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedInitialized:Z

    if-eqz v0, :cond_0

    .line 122
    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 124
    sput-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedInitialized:Z

    const/4 v1, 0x0

    .line 128
    :try_start_0
    const-class v2, Landroid/hardware/Camera;

    const-string v3, "open"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    .line 131
    const-class v2, Landroid/hardware/Camera;

    const-string v3, "getNumberOfCameras"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "android.hardware.Camera$CameraInfo"

    .line 140
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    .line 141
    const-class v2, Landroid/hardware/Camera;

    const-string v3, "getCameraInfo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    sget-object v5, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    sget-object v1, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 150
    sput-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    .line 154
    :cond_1
    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    return v0

    :catch_0
    return v1

    :catch_1
    return v1
.end method

.method public static getNumberOfCameras()I
    .locals 3

    .line 289
    invoke-static {}, Lcom/adobe/air/AndroidCamera;->areMultipleCamerasSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    sget-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private native nativeOnCanOpenCamera(J)V
.end method

.method private native nativeOnFrameCaptured(J[B)V
.end method

.method private native nativeOnShouldCloseCamera(J)V
.end method


# virtual methods
.method public autoFocus()Z
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fixed"

    if-eq v0, v2, :cond_1

    const-string v2, "infinity"

    if-eq v0, v2, :cond_1

    const-string v2, "continuous-video"

    if-eq v0, v2, :cond_1

    .line 458
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public close()V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/adobe/air/AndroidCamera;->stopCapture()V

    .line 563
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 564
    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraPosition()I
    .locals 8

    .line 244
    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 249
    sget-object v0, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    sget-object v0, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_0
    move-object v0, v2

    .line 260
    :goto_0
    :try_start_1
    sget-object v3, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_1

    .line 268
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "facing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    return v1

    .line 276
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    return v1

    :catch_3
    return v1

    :cond_2
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method public getCaptureFormat()I
    .locals 1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCaptureHeight()I
    .locals 1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 375
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCaptureWidth()I
    .locals 1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 359
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSupportedFormats()[I
    .locals 5

    const/4 v0, 0x0

    .line 304
    new-array v1, v0, [I

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v2

    .line 309
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v4, v0, 0x1

    .line 314
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    goto :goto_0

    :catch_0
    move-object v3, v1

    :catch_1
    :cond_0
    return-object v3
.end method

.method public getSupportedFps()[I
    .locals 5

    const/4 v0, 0x0

    .line 218
    new-array v1, v0, [I

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    .line 223
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v4, v0, 0x1

    .line 227
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    goto :goto_0

    :catch_0
    move-object v3, v1

    :catch_1
    :cond_0
    return-object v3
.end method

.method public getSupportedVideoSizes()[I
    .locals 6

    const/4 v0, 0x0

    .line 329
    new-array v1, v0, [I

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 335
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    add-int/lit8 v4, v0, 0x1

    .line 339
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    aput v5, v3, v0

    add-int/lit8 v0, v4, 0x1

    .line 340
    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    aput v2, v3, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v3, v1

    :catch_1
    :cond_0
    return-object v3
.end method

.method public open(I)Z
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 171
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/air/AndroidActivityWrapper;->getCameraView()Lcom/adobe/air/AndroidCameraView;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Lcom/adobe/air/AndroidCameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 175
    :try_start_1
    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 177
    sget-boolean v4, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    if-eqz v4, :cond_1

    .line 179
    sget-object v4, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera;

    iput-object v4, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    .line 180
    iput p1, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    .line 184
    iput v2, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    .line 187
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-object v3, v0

    .line 193
    :goto_1
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 196
    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    .line 200
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_3

    .line 202
    new-instance p1, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;

    invoke-direct {p1, p0}, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;-><init>(Lcom/adobe/air/AndroidCamera;)V

    invoke-interface {v3, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public registerCallbacks(Z)V
    .locals 1

    .line 570
    iput-boolean p1, p0, Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z

    if-eqz p1, :cond_1

    .line 573
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    if-nez p1, :cond_0

    .line 575
    new-instance p1, Lcom/adobe/air/AndroidCamera$2;

    invoke-direct {p1, p0}, Lcom/adobe/air/AndroidCamera$2;-><init>(Lcom/adobe/air/AndroidCamera;)V

    iput-object p1, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    .line 595
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    goto :goto_0

    .line 599
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    if-eqz p1, :cond_2

    .line 600
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    :cond_2
    const/4 p1, 0x0

    .line 601
    iput-object p1, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    :goto_0
    return-void
.end method

.method public setContinuousFocusMode()Z
    .locals 5

    .line 403
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 410
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "continuous-video"

    .line 417
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v2, "continuous-video"

    .line 419
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "edof"

    .line 423
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "edof"

    .line 424
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return v1
.end method

.method public startCapture(IIII)Z
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 483
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 484
    invoke-virtual {v2, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 485
    invoke-virtual {v2, p3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 488
    invoke-virtual {v2, p4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 490
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 492
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    new-instance p2, Lcom/adobe/air/AndroidCamera$1;

    invoke-direct {p2, p0}, Lcom/adobe/air/AndroidCamera$1;-><init>(Lcom/adobe/air/AndroidCamera;)V

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 522
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 525
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p3

    iget p3, p3, Landroid/hardware/Camera$Size;->height:I

    mul-int p2, p2, p3

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p1

    mul-int p2, p2, p1

    .line 529
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    .line 530
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    .line 531
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    iput-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    .line 532
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :try_start_1
    iput-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    return v0
.end method

.method public stopCapture()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 550
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 551
    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    .line 552
    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    .line 553
    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    :cond_0
    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z

    return-void
.end method
