.class public Lcom/adobe/air/wand/view/GestureListener;
.super Ljava/lang/Object;
.source "GestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/view/GestureListener$TouchPoint;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GestureListener"

.field private static final MAX_TOUCH_POINTS:I = 0x2

.field private static final MM_PER_INCH:F = 25.4f

.field private static final _FP_GESTURE_PAN_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ROTATION_THRESHOLD_DEGREES:F = 15.0f

.field private static final _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM:F = 10.0f

.field private static final _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM:F = 5.0f

.field private static final _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ZOOM_THRESHOLD_MM:F = 8.0f

.field public static final kGestureAll:I = 0x8

.field public static final kGestureBegin:I = 0x2

.field public static final kGestureEnd:I = 0x4

.field public static final kGesturePan:I = 0x1

.field public static final kGestureRotate:I = 0x2

.field public static final kGestureSwipe:I = 0x4

.field public static final kGestureTap:I = 0x3

.field public static final kGestureUpdate:I = 0x1

.field public static final kGestureZoom:I

.field private static screenPPI:I


# instance fields
.field private mCheckForSwipe:Z

.field private mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

.field private mCouldBeTwoFingerTap:I

.field private mDidOccurTwoFingerGesture:Z

.field private mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

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

.field private mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

.field private mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

.field private mTwoFingerTapStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/wand/view/CompanionView;)V
    .locals 4

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    .line 63
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 64
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 65
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    .line 66
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    .line 68
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocX:F

    .line 69
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocY:F

    .line 70
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    .line 71
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    .line 72
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocX:F

    .line 73
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocY:F

    const-wide/16 v2, 0x0

    .line 75
    iput-wide v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mTwoFingerTapStartTime:J

    .line 76
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 88
    iput v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    .line 89
    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 90
    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    .line 141
    iput-object p2, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 p2, 0x2

    .line 143
    new-array v0, p2, [Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    :goto_0
    if-ge v1, p2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    new-instance v2, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {v2, p0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance p2, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {p2, p0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;)V

    iput-object p2, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 151
    iget p2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    float-to-int p1, p2

    sput p1, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    return-void
.end method

.method private endPanGesture()V
    .locals 12

    .line 308
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 312
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 324
    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocX:F

    .line 325
    iget v6, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocY:F

    .line 327
    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    :cond_1
    return-void
.end method

.method private endRotateGesture()V
    .locals 12

    .line 254
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 270
    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocX:F

    .line 271
    iget v6, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocY:F

    .line 273
    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    :cond_1
    return-void
.end method

.method private endZoomGesture()V
    .locals 12

    .line 280
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 296
    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    .line 297
    iget v6, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    .line 299
    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 301
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 302
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    :cond_1
    return-void
.end method

.method private getRotation(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F
    .locals 6

    .line 826
    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v0

    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v0

    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 829
    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result p2

    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v2

    .line 831
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v4

    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result p4

    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

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

.method private isPanGesture(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)Z
    .locals 4

    .line 850
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 851
    invoke-static {p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result p3

    invoke-static {p1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result p1

    sub-float/2addr p3, p1

    .line 853
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result p1

    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr p1, v1

    .line 854
    invoke-static {p4}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result p4

    invoke-static {p2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result p2

    sub-float/2addr p4, p2

    .line 856
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 857
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

    .line 858
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

    .line 863
    :cond_3
    iget-boolean p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-nez p1, :cond_4

    const/high16 p1, 0x40400000    # 3.0f

    sget p2, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

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


# virtual methods
.method public endTwoFingerGesture()Z
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 234
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 236
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    iget-wide v4, p0, Lcom/adobe/air/wand/view/GestureListener;->mTwoFingerTapStartTime:J

    sub-long/2addr v2, v4

    .line 238
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/GestureListener;->onTwoFingerTap()Z

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/wand/view/GestureListener;->endRotateGesture()V

    .line 248
    invoke-direct {p0}, Lcom/adobe/air/wand/view/GestureListener;->endPanGesture()V

    return v1
.end method

.method public getCheckForSwipe()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    return v0
.end method

.method public getCouldBeTwoFingerTap()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    return v0
.end method

.method public getDownTouchPoint(I)Lcom/adobe/air/wand/view/GestureListener$TouchPoint;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public mayStartNewTransformGesture()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    .line 210
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 211
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    .line 212
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    .line 213
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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
    .locals 20

    move-object/from16 v0, p0

    .line 702
    iget-object v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v1

    iget-object v2, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    return v3

    .line 710
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v8

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v9

    .line 719
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    float-to-double v4, v1

    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    float-to-double v10, v1

    .line 721
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 724
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    const-wide/16 v15, 0x0

    if-lt v1, v7, :cond_1

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v17

    sub-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v13, v1

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v17

    sub-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-wide/from16 v18, v13

    float-to-double v12, v1

    goto :goto_0

    :cond_1
    move-wide v12, v15

    move-wide/from16 v18, v12

    :goto_0
    const/4 v1, 0x0

    cmpl-double v14, v4, v15

    if-eqz v14, :cond_a

    .line 732
    iget-boolean v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    const-wide v14, 0x4039666660000000L    # 25.399999618530273

    if-nez v4, :cond_3

    mul-double v10, v10, v14

    sget v4, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpl-double v16, v10, v4

    if-lez v16, :cond_2

    goto :goto_1

    :cond_2
    return v1

    .line 734
    :cond_3
    :goto_1
    iget-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-nez v1, :cond_4

    .line 736
    iput-boolean v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    .line 738
    iput-boolean v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    const/4 v5, 0x2

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    .line 743
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v1, v7, :cond_9

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v1

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    if-nez v1, :cond_5

    mul-double v18, v18, v14

    sget v1, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v18, v6

    cmpl-double v1, v18, v10

    if-lez v1, :cond_6

    .line 748
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v6

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 749
    iput-boolean v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureX:Z

    goto :goto_3

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 752
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v6

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v6

    cmpl-float v4, v6, v4

    if-eqz v4, :cond_8

    iget-boolean v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    if-nez v4, :cond_7

    mul-double v12, v12, v14

    sget v4, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v6

    cmpl-double v4, v12, v10

    if-lez v4, :cond_8

    .line 755
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v4

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 756
    iput-boolean v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGestureY:Z

    move v10, v1

    move v11, v2

    goto :goto_4

    :cond_8
    move v10, v1

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_4

    .line 761
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    move v10, v1

    move v11, v10

    .line 771
    :goto_4
    iput v8, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    .line 772
    iput v9, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    .line 775
    iget-object v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v7, 0x1

    const/4 v1, 0x0

    move v6, v1

    const/4 v1, 0x0

    move v12, v1

    const/4 v1, 0x0

    move v13, v1

    const/4 v1, 0x0

    move v14, v1

    invoke-virtual/range {v4 .. v14}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    return v3

    :cond_a
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 683
    iget-boolean p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-eqz p1, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/adobe/air/wand/view/GestureListener;->endZoomGesture()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 12

    .line 795
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 802
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v8

    .line 810
    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocX:F

    iget v6, p0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousZoomLocY:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v8

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 364
    iget-object v2, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v2}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v2

    iget-object v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne v2, v3, :cond_b

    .line 393
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    .line 394
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    div-float v10, v9, v8

    .line 399
    new-array v8, v3, [Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_1

    .line 403
    new-instance v13, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    invoke-direct {v13, v0, v14, v15, v12}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;FFI)V

    aput-object v13, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 406
    :cond_1
    aget-object v1, v8, v7

    invoke-static {v1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v1

    .line 407
    aget-object v9, v8, v4

    invoke-static {v9}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v9

    if-ltz v1, :cond_10

    if-ge v1, v3, :cond_10

    if-ltz v9, :cond_10

    if-ge v9, v3, :cond_10

    .line 415
    iget-boolean v12, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-nez v12, :cond_8

    .line 424
    iget-object v12, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v12, v12, v1

    iget-object v13, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v13, v13, v9

    aget-object v14, v8, v7

    aget-object v15, v8, v4

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/adobe/air/wand/view/GestureListener;->getRotation(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v12

    .line 429
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x43340000    # 180.0f

    const/high16 v15, 0x43b40000    # 360.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    cmpl-float v13, v12, v6

    if-lez v13, :cond_2

    sub-float v12, v15, v12

    mul-float v12, v12, v5

    goto :goto_1

    :cond_2
    add-float/2addr v12, v15

    .line 437
    :cond_3
    :goto_1
    iget-boolean v13, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    if-nez v13, :cond_4

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v16, 0x41700000    # 15.0f

    cmpl-float v13, v13, v16

    if-lez v13, :cond_8

    :cond_4
    const/16 v24, 0x2

    .line 440
    iget-boolean v13, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    if-nez v13, :cond_5

    .line 443
    iput-boolean v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    .line 444
    iput v6, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    .line 445
    iput-boolean v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    const/4 v13, 0x2

    goto :goto_2

    :cond_5
    const/4 v13, 0x1

    .line 448
    :goto_2
    iget v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    sub-float v3, v12, v3

    .line 453
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v14, v16, v14

    if-lez v14, :cond_7

    cmpl-float v6, v3, v6

    if-lez v6, :cond_6

    sub-float/2addr v15, v3

    mul-float v15, v15, v5

    goto :goto_3

    :cond_6
    add-float/2addr v15, v3

    :goto_3
    move/from16 v30, v15

    goto :goto_4

    :cond_7
    move/from16 v30, v3

    .line 460
    :goto_4
    iput v12, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousAbsoluteRotation:F

    .line 461
    iput v2, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocX:F

    .line 462
    iput v10, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousRotateLocY:F

    .line 465
    iget-object v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/16 v25, 0x1

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v22, v3

    move/from16 v23, v13

    move/from16 v26, v2

    move/from16 v27, v10

    invoke-virtual/range {v22 .. v32}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    move v3, v13

    goto :goto_5

    :cond_8
    const/4 v3, 0x1

    :goto_5
    const/4 v13, 0x0

    .line 476
    iget-boolean v6, v0, Lcom/adobe/air/wand/view/GestureListener;->mInZoomTransformGesture:Z

    if-nez v6, :cond_10

    iget-boolean v6, v0, Lcom/adobe/air/wand/view/GestureListener;->mInRotateTransformGesture:Z

    if-nez v6, :cond_10

    .line 479
    iget-object v6, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v1, v6, v1

    iget-object v6, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v6, v6, v9

    aget-object v9, v8, v7

    aget-object v12, v8, v4

    invoke-direct {v0, v1, v6, v9, v12}, Lcom/adobe/air/wand/view/GestureListener;->isPanGesture(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v7, 0x1

    .line 485
    iget-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-nez v1, :cond_9

    .line 488
    iput-boolean v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    .line 489
    iput-boolean v4, v0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    const/4 v6, 0x2

    goto :goto_6

    :cond_9
    move v6, v3

    :goto_6
    mul-float v14, p3, v5

    mul-float v15, p4, v5

    .line 494
    iput v2, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocX:F

    .line 495
    iput v10, v0, Lcom/adobe/air/wand/view/GestureListener;->mPreviousPanLocY:F

    .line 500
    iget-object v5, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v8, 0x1

    move v9, v2

    const/high16 v1, 0x3f800000    # 1.0f

    move v12, v1

    invoke-virtual/range {v5 .. v15}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    goto/16 :goto_9

    .line 508
    :cond_a
    iget-boolean v1, v0, Lcom/adobe/air/wand/view/GestureListener;->mInPanTransformGesture:Z

    if-eqz v1, :cond_10

    .line 511
    invoke-direct/range {p0 .. p0}, Lcom/adobe/air/wand/view/GestureListener;->endPanGesture()V

    .line 512
    aget-object v1, v8, v7

    invoke-static {v1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    aget-object v2, v8, v7

    invoke-static {v2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    aget-object v3, v8, v7

    invoke-static {v3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/wand/view/GestureListener;->setDownTouchPoint(FFI)V

    .line 513
    aget-object v1, v8, v4

    invoke-static {v1}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v1

    aget-object v2, v8, v4

    invoke-static {v2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    aget-object v3, v8, v4

    invoke-static {v3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$100(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/wand/view/GestureListener;->setDownTouchPoint(FFI)V

    goto/16 :goto_9

    .line 523
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v4, :cond_10

    .line 525
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ltz v2, :cond_10

    const/4 v3, 0x2

    if-ge v2, v3, :cond_10

    .line 535
    iget-boolean v3, v0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    if-eqz v3, :cond_10

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v4, :cond_10

    .line 543
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v8, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v8, v8, v2

    invoke-static {v8}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v8

    sub-float/2addr v3, v8

    .line 544
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, v0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v2, v9, v2

    invoke-static {v2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    sub-float/2addr v8, v2

    .line 548
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v9, 0x41cb3333    # 25.4f

    mul-float v2, v2, v9

    sget v10, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v10, v10

    div-float/2addr v2, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v12, 0x41200000    # 10.0f

    cmpl-float v2, v2, v12

    if-ltz v2, :cond_d

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v9

    sget v13, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v13, v13

    div-float/2addr v2, v13

    cmpg-float v2, v2, v11

    if-gtz v2, :cond_d

    cmpl-float v2, v3, v6

    if-lez v2, :cond_c

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_c
    move/from16 v22, v5

    const/4 v2, 0x1

    goto :goto_7

    .line 554
    :cond_d
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v9

    sget v13, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v13, v13

    div-float/2addr v2, v13

    cmpl-float v2, v2, v12

    if-ltz v2, :cond_f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v9

    sget v3, Lcom/adobe/air/wand/view/GestureListener;->screenPPI:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v2, v2, v11

    if-gtz v2, :cond_f

    cmpl-float v2, v8, v6

    if-lez v2, :cond_e

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_e
    move/from16 v23, v5

    const/4 v2, 0x1

    const/16 v22, 0x0

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    const/16 v22, 0x0

    :goto_7
    const/16 v23, 0x0

    :goto_8
    if-eqz v2, :cond_10

    const/16 v14, 0x8

    const/4 v15, 0x4

    move-object/from16 v2, p1

    .line 574
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 575
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 577
    iget-object v13, v0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/16 v16, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v13 .. v23}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    .line 579
    iput-boolean v7, v0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    :cond_10
    :goto_9
    return v4
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
    .locals 14

    .line 628
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/CompanionView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v4, 0x8

    const/4 v5, 0x3

    .line 637
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-static {v0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    iget-object v2, p0, Lcom/adobe/air/wand/view/GestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-static {v2}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$200(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v7, v0, v2

    .line 638
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-static {v0}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v0

    iget-object v3, p0, Lcom/adobe/air/wand/view/GestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-static {v3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$300(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)F

    move-result v3

    add-float/2addr v0, v3

    div-float v8, v0, v2

    .line 641
    iget-object v3, p0, Lcom/adobe/air/wand/view/GestureListener;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/adobe/air/wand/view/CompanionView;->onGestureListener(IIZFFFFFFF)V

    const/4 v0, 0x0

    .line 644
    iput v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    return v1
.end method

.method public setCheckForSwipe(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCheckForSwipe:Z

    return-void
.end method

.method public setCouldBeTwoFingerTap(I)V
    .locals 2

    .line 184
    iput p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mCouldBeTwoFingerTap:I

    if-nez p1, :cond_0

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mTwoFingerTapStartTime:J

    const/4 p1, 0x0

    .line 188
    iput-boolean p1, p0, Lcom/adobe/air/wand/view/GestureListener;->mDidOccurTwoFingerGesture:Z

    :cond_0
    return-void
.end method

.method public setDownTouchPoint(FFI)V
    .locals 1

    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mDownTouchPoints:[Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    aget-object v0, v0, p3

    invoke-static {v0, p1, p2, p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;->access$000(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;FFI)V

    :cond_0
    return-void
.end method

.method public setPrimaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .line 204
    new-instance v0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    return-void
.end method

.method public setSecondaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .line 199
    new-instance v0, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/wand/view/GestureListener$TouchPoint;-><init>(Lcom/adobe/air/wand/view/GestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/GestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    return-void
.end method
