.class public Lcom/adobe/air/gestures/AIRGestureListener;
.super Ljava/lang/Object;
.source "AIRGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AIRGestureListener"

.field private static final MAX_TOUCH_POINTS:I = 0x2

.field private static final MM_PER_INCH:F = 25.4f

.field private static final _FP_GESTURE_PAN_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ROTATION_THRESHOLD_DEGREES:F = 15.0f

.field private static final _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM:F = 10.0f

.field private static final _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM:F = 5.0f

.field private static final _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ZOOM_THRESHOLD_MM:F = 8.0f

.field private static final kGestureAll:I = 0x8

.field private static final kGestureBegin:I = 0x2

.field private static final kGestureEnd:I = 0x4

.field private static final kGesturePan:I = 0x1

.field private static final kGestureRotate:I = 0x2

.field private static final kGestureSwipe:I = 0x5

.field private static final kGestureTwoFingerTap:I = 0x3

.field private static final kGestureUpdate:I = 0x1

.field private static final kGestureZoom:I

.field private static screenPPI:I


# instance fields
.field private mCheckForSwipe:Z

.field private mCouldBeTwoFingerTap:I

.field private mDidOccurTwoFingerGesture:Z

.field private mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mInPanTransformGesture:Z

.field private mInRotateTransformGesture:Z

.field private mInZoomTransformGesture:Z

.field private mInZoomTransformGestureX:Z

.field private mInZoomTransformGestureY:Z

.field private mPreviousAbsoluteRotation:F

.field private mPreviousPanLocX:F

.field private mPreviousPanLocY:F

.field private mPreviousRotateLocX:F

.field private mPreviousRotateLocY:F

.field private mPreviousZoomLocX:F

.field private mPreviousZoomLocY:F

.field private mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mTwoFingerTapStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 4

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 64
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 65
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 66
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    .line 67
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 69
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 70
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 71
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 72
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 73
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 74
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    const-wide/16 v2, 0x0

    .line 76
    iput-wide v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mTwoFingerTapStartTime:J

    .line 77
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 89
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 91
    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    .line 158
    iput-object p2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 p2, 0x2

    .line 160
    new-array v0, p2, [Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    :goto_0
    if-ge v1, p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    new-instance v2, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v2, p0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance p2, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {p2, p0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;)V

    iput-object p2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 167
    invoke-static {p1}, Lcom/adobe/air/SystemCapabilities;->GetScreenDPI(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    return-void
.end method

.method private distanceBetweenPoints(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)D
    .locals 4

    .line 924
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p2

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private endPanGesture()V
    .locals 13

    .line 325
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 329
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 341
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 342
    iget v6, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object v1, p0

    .line 344
    invoke-direct/range {v1 .. v12}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    :cond_1
    return-void
.end method

.method private endRotateGesture()V
    .locals 13

    .line 271
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 287
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 288
    iget v6, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object v1, p0

    .line 290
    invoke-direct/range {v1 .. v12}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    :cond_1
    return-void
.end method

.method private endZoomGesture()V
    .locals 13

    .line 297
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 313
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 314
    iget v6, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object v1, p0

    .line 316
    invoke-direct/range {v1 .. v12}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 318
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 319
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    :cond_1
    return-void
.end method

.method private getRotation(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F
    .locals 6

    .line 867
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v0

    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v0

    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 870
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p2

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v2

    .line 872
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p4

    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p3

    sub-float/2addr p4, p3

    float-to-double p3, p4

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p3

    mul-double p3, p3, v0

    div-double/2addr p3, v2

    sub-double/2addr p3, p1

    double-to-float p1, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPanGesture(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)Z
    .locals 4

    .line 891
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 892
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p3

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p1

    sub-float/2addr p3, p1

    .line 894
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p1

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr p1, v1

    .line 895
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p4

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result p2

    sub-float/2addr p4, p2

    .line 897
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 898
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float p2, p2, p2

    mul-float v1, v1, v1

    add-float/2addr p2, v1

    float-to-double v1, p2

    .line 899
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const/4 p2, 0x0

    cmpl-float v3, v0, p2

    if-ltz v3, :cond_0

    cmpl-float v3, p1, p2

    if-gez v3, :cond_1

    :cond_0
    cmpg-float v0, v0, p2

    if-gtz v0, :cond_5

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_5

    :cond_1
    cmpl-float p1, p3, p2

    if-ltz p1, :cond_2

    cmpl-float p1, p4, p2

    if-gez p1, :cond_3

    :cond_2
    cmpg-float p1, p3, p2

    if-gtz p1, :cond_5

    cmpg-float p1, p4, p2

    if-gtz p1, :cond_5

    .line 904
    :cond_3
    iget-boolean p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez p1, :cond_4

    const/high16 p1, 0x40400000    # 3.0f

    sget p2, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr p2, p1

    float-to-double p1, p2

    cmpl-double p3, v1, p1

    if-lez p3, :cond_5

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private native nativeOnGestureListener(IIZFFFFFFFF)Z
.end method


# virtual methods
.method public endTwoFingerGesture()Z
    .locals 6

    .line 245
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 251
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 253
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    iget-wide v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mTwoFingerTapStartTime:J

    sub-long/2addr v2, v4

    .line 255
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->onTwoFingerTap()Z

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endRotateGesture()V

    .line 265
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endPanGesture()V

    return v1
.end method

.method public getCheckForSwipe()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    return v0
.end method

.method public getCouldBeTwoFingerTap()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    return v0
.end method

.method public getDownTouchPoint(I)Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public mayStartNewTransformGesture()V
    .locals 1

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 227
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 228
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 229
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    .line 230
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 702
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnDoubleClickListener(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 21

    move-object/from16 v12, p0

    .line 743
    iget-object v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    const/4 v13, 0x1

    if-eq v0, v1, :cond_0

    return v13

    .line 751
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    const/4 v8, 0x0

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v0

    float-to-double v6, v0

    .line 761
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    float-to-double v14, v0

    .line 762
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 765
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    const-wide/16 v16, 0x0

    if-lt v0, v3, :cond_1

    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v11

    sub-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v10, v0

    .line 768
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v18

    sub-float v0, v0, v18

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move-wide/from16 v19, v10

    float-to-double v9, v0

    goto :goto_0

    :cond_1
    move-wide/from16 v9, v16

    move-wide/from16 v19, v9

    :goto_0
    const/4 v0, 0x0

    cmpl-double v11, v6, v16

    if-eqz v11, :cond_a

    .line 773
    iget-boolean v6, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    const-wide v16, 0x4039666660000000L    # 25.399999618530273

    if-nez v6, :cond_3

    mul-double v14, v14, v16

    sget v6, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v6

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v11, v14, v6

    if-lez v11, :cond_2

    goto :goto_1

    :cond_2
    return v0

    .line 775
    :cond_3
    :goto_1
    iget-boolean v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-nez v0, :cond_4

    .line 777
    iput-boolean v13, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 779
    iput-boolean v13, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    .line 784
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_9

    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v0

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    iget-boolean v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    if-nez v0, :cond_5

    mul-double v19, v19, v16

    sget v0, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v19, v19, v6

    cmpl-double v0, v19, v14

    if-lez v0, :cond_6

    .line 789
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v6

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 790
    iput-boolean v13, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    goto :goto_3

    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    .line 793
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    iget-boolean v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    if-nez v0, :cond_7

    mul-double v9, v9, v16

    sget v0, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v2

    cmpl-double v0, v9, v14

    if-lez v0, :cond_8

    .line 796
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 797
    iput-boolean v13, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    move v7, v0

    goto :goto_4

    :cond_8
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_4

    .line 802
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    move v6, v0

    move v7, v6

    .line 812
    :goto_4
    iput v4, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 813
    iput v5, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    const/4 v3, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 816
    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    return v13

    :cond_a
    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 724
    iget-boolean p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz p1, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endZoomGesture()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 13

    .line 836
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 843
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v8

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 851
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    iget v6, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move v7, v8

    invoke-direct/range {v1 .. v12}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 26

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 381
    iget-object v2, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v2

    iget-object v3, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v2, v13, :cond_0

    return v14

    :cond_0
    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/high16 v17, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v11, 0x0

    if-ne v2, v13, :cond_b

    .line 410
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v0, v2

    .line 411
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v0, v4

    div-float v7, v0, v2

    .line 416
    new-array v6, v13, [Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v13, :cond_1

    .line 420
    new-instance v2, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    invoke-direct {v2, v12, v4, v5, v15}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    aput-object v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    aget-object v0, v6, v11

    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v15

    .line 424
    aget-object v0, v6, v14

    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v5

    if-ltz v15, :cond_11

    if-ge v15, v13, :cond_11

    if-ltz v5, :cond_11

    if-ge v5, v13, :cond_11

    .line 432
    iget-boolean v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez v0, :cond_8

    .line 441
    iget-object v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v0, v0, v15

    iget-object v1, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v1, v1, v5

    aget-object v2, v6, v11

    aget-object v4, v6, v14

    invoke-direct {v12, v0, v1, v2, v4}, Lcom/adobe/air/gestures/AIRGestureListener;->getRotation(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    .line 446
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    sub-float v0, v4, v0

    mul-float v0, v0, v17

    goto :goto_1

    :cond_2
    add-float/2addr v0, v4

    .line 454
    :cond_3
    :goto_1
    iget-boolean v1, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v18, 0x41700000    # 15.0f

    cmpl-float v1, v1, v18

    if-lez v1, :cond_8

    :cond_4
    const/16 v18, 0x2

    .line 457
    iget-boolean v1, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-nez v1, :cond_5

    .line 460
    iput-boolean v14, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 461
    iput v3, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 462
    iput-boolean v14, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    const/16 v19, 0x2

    goto :goto_2

    :cond_5
    const/16 v19, 0x1

    .line 465
    :goto_2
    iget v1, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    sub-float v1, v0, v1

    .line 470
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpl-float v2, v20, v2

    if-lez v2, :cond_7

    cmpl-float v2, v1, v3

    if-lez v2, :cond_6

    sub-float/2addr v4, v1

    mul-float v4, v4, v17

    goto :goto_3

    :cond_6
    add-float/2addr v4, v1

    :goto_3
    move/from16 v20, v4

    goto :goto_4

    :cond_7
    move/from16 v20, v1

    .line 477
    :goto_4
    iput v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 478
    iput v8, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 479
    iput v7, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    const/4 v3, 0x1

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move v4, v8

    move/from16 v18, v5

    move v5, v7

    move-object/from16 v24, v6

    move/from16 v6, v22

    move v13, v7

    move/from16 v7, v23

    move/from16 v25, v8

    move/from16 v8, v20

    const/4 v14, 0x0

    move/from16 v11, v21

    .line 482
    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    goto :goto_5

    :cond_8
    move/from16 v18, v5

    move-object/from16 v24, v6

    move v13, v7

    move/from16 v25, v8

    const/4 v14, 0x0

    const/16 v19, 0x1

    :goto_5
    const/4 v8, 0x0

    .line 493
    iget-boolean v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-nez v0, :cond_11

    iget-boolean v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-nez v0, :cond_11

    .line 496
    iget-object v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v0, v0, v15

    iget-object v1, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v1, v1, v18

    aget-object v2, v24, v14

    const/4 v3, 0x1

    aget-object v4, v24, v3

    invoke-direct {v12, v0, v1, v2, v4}, Lcom/adobe/air/gestures/AIRGestureListener;->isPanGesture(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    .line 502
    iget-boolean v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez v0, :cond_9

    .line 505
    iput-boolean v3, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 506
    iput-boolean v3, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    const/4 v1, 0x2

    goto :goto_6

    :cond_9
    move/from16 v1, v19

    :goto_6
    mul-float v9, p3, v17

    mul-float v10, p4, v17

    move/from16 v4, v25

    .line 511
    iput v4, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 512
    iput v13, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    const/4 v3, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move v5, v13

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v7, v16

    .line 517
    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    goto/16 :goto_b

    .line 525
    :cond_a
    iget-boolean v0, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-eqz v0, :cond_11

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endPanGesture()V

    .line 529
    aget-object v0, v24, v14

    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    aget-object v1, v24, v14

    invoke-static {v1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    aget-object v2, v24, v14

    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    const/4 v0, 0x1

    .line 530
    aget-object v1, v24, v0

    invoke-static {v1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    aget-object v2, v24, v0

    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    aget-object v3, v24, v0

    invoke-static {v3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v0

    invoke-virtual {v12, v1, v2, v0}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    goto/16 :goto_b

    :cond_b
    const/4 v14, 0x0

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    .line 542
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ltz v2, :cond_11

    const/4 v5, 0x2

    if-ge v2, v5, :cond_11

    .line 552
    iget-boolean v5, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    if-eqz v5, :cond_11

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ne v5, v4, :cond_11

    .line 561
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget-object v5, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    sub-float/2addr v4, v5

    .line 562
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v2, v6, v2

    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    sub-float/2addr v5, v2

    .line 566
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v6, 0x41cb3333    # 25.4f

    mul-float v2, v2, v6

    sget v7, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x40a00000    # 5.0f

    const/high16 v15, 0x41200000    # 10.0f

    cmpl-float v2, v2, v15

    if-ltz v2, :cond_d

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v6

    sget v9, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v9, v9

    div-float/2addr v2, v9

    cmpg-float v2, v2, v13

    if-gtz v2, :cond_d

    cmpl-float v2, v4, v3

    if-lez v2, :cond_c

    goto :goto_7

    :cond_c
    const/high16 v11, -0x40800000    # -1.0f

    .line 571
    :goto_7
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v4, v9

    long-to-float v4, v4

    div-float/2addr v2, v4

    mul-float v2, v2, v7

    move v4, v2

    move v9, v11

    const/4 v2, 0x1

    const/4 v10, 0x0

    goto :goto_a

    .line 573
    :cond_d
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v6

    sget v9, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v9, v9

    div-float/2addr v2, v9

    cmpl-float v2, v2, v15

    if-ltz v2, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v6

    sget v4, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    cmpg-float v2, v2, v13

    if-gtz v2, :cond_f

    cmpl-float v2, v5, v3

    if-lez v2, :cond_e

    goto :goto_8

    :cond_e
    const/high16 v11, -0x40800000    # -1.0f

    .line 578
    :goto_8
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v4, v9

    long-to-float v4, v4

    div-float/2addr v2, v4

    mul-float v2, v2, v7

    move v4, v2

    move v10, v11

    const/4 v2, 0x1

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_9
    const/4 v9, 0x0

    :goto_a
    if-eqz v2, :cond_11

    const/16 v2, 0x8

    const/4 v5, 0x5

    .line 594
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 595
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    cmpg-float v0, v4, v3

    if-gez v0, :cond_10

    mul-float v4, v4, v17

    :cond_10
    move v11, v4

    const/4 v3, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v1, v2

    move v2, v5

    move v4, v6

    move v5, v7

    move v6, v13

    move v7, v15

    .line 601
    invoke-direct/range {v0 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    .line 603
    iput-boolean v14, v12, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    :cond_11
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTwoFingerTap()Z
    .locals 15

    .line 652
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v4, 0x8

    const/4 v5, 0x3

    .line 661
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    iget-object v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v7, v0, v2

    .line 662
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    iget-object v3, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-static {v3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    add-float/2addr v0, v3

    div-float v8, v0, v2

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, p0

    .line 665
    invoke-direct/range {v3 .. v14}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFFF)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 668
    :goto_0
    iput v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    return v1
.end method

.method public setCheckForSwipe(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    return-void
.end method

.method public setCouldBeTwoFingerTap(I)V
    .locals 2

    .line 200
    iput p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    if-nez p1, :cond_0

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mTwoFingerTapStartTime:J

    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    :cond_0
    return-void
.end method

.method public setDownTouchPoint(FFI)V
    .locals 1

    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v0, v0, p3

    invoke-static {v0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$000(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;FFI)V

    :cond_0
    return-void
.end method

.method public setPrimaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .line 221
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    return-void
.end method

.method public setSecondaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .line 216
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    return-void
.end method
