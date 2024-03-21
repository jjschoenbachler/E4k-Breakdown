.class public Lcom/adobe/air/wand/view/CompanionView;
.super Landroid/view/View;
.source "CompanionView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CompanionView"

.field static final POST_TOUCH_MESSAGE_AFTER_DELAY:I = 0x0

.field public static final kTouchActionBegin:I = 0x2

.field public static final kTouchActionEnd:I = 0x4

.field public static final kTouchActionMove:I = 0x1

.field public static final kTouchMetaStateIsEraser:I = 0x4000000

.field public static final kTouchMetaStateIsPen:I = 0x2000000

.field public static final kTouchMetaStateMask:I = 0xe000000

.field public static final kTouchMetaStateSideButton1:I = 0x8000000


# instance fields
.field public final kMultitouchGesture:I

.field public final kMultitouchNone:I

.field public final kMultitouchRaw:I

.field private mBoundHeight:I

.field private mBoundWidth:I

.field private mCurrentOrientation:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

.field private mIsFullScreen:Z

.field private mMultitouchMode:I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mSkipHeightFromTop:I

.field private mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

.field private mVisibleBoundHeight:I

.field private mVisibleBoundWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchNone:I

    const/4 v1, 0x1

    .line 43
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchRaw:I

    const/4 v1, 0x2

    .line 44
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchGesture:I

    .line 52
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mSkipHeightFromTop:I

    .line 53
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundHeight:I

    .line 54
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundWidth:I

    .line 55
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundWidth:I

    .line 56
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundHeight:I

    .line 62
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mMultitouchMode:I

    .line 68
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mCurrentOrientation:I

    .line 69
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mIsFullScreen:Z

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 79
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/view/CompanionView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchNone:I

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchRaw:I

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchGesture:I

    .line 52
    iput p2, p0, Lcom/adobe/air/wand/view/CompanionView;->mSkipHeightFromTop:I

    .line 53
    iput p2, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundHeight:I

    .line 54
    iput p2, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundWidth:I

    .line 55
    iput p2, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundWidth:I

    .line 56
    iput p2, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundHeight:I

    .line 62
    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mMultitouchMode:I

    .line 68
    iput p2, p0, Lcom/adobe/air/wand/view/CompanionView;->mCurrentOrientation:I

    .line 69
    iput-boolean p2, p0, Lcom/adobe/air/wand/view/CompanionView;->mIsFullScreen:Z

    const/4 p2, 0x0

    .line 71
    iput-object p2, p0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/view/CompanionView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private IsTouchEventHandlingAllowed(IFF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    .line 91
    new-instance v0, Lcom/adobe/air/wand/view/TouchSensor;

    invoke-direct {v0}, Lcom/adobe/air/wand/view/TouchSensor;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 93
    new-instance v0, Lcom/adobe/air/wand/view/GestureListener;

    invoke-direct {v0, p1, p0}, Lcom/adobe/air/wand/view/GestureListener;-><init>(Landroid/content/Context;Lcom/adobe/air/wand/view/CompanionView;)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    .line 94
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 95
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 97
    invoke-virtual {p0, v2}, Lcom/adobe/air/wand/view/CompanionView;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/view/CompanionView;->setClickable(Z)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/view/CompanionView;->setEnabled(Z)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/view/CompanionView;->setFocusable(Z)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/view/CompanionView;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public IsLandScape()Z
    .locals 2

    .line 403
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsTouchUpHandlingAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBoundHeight()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundHeight:I

    return v0
.end method

.method public getBoundWidth()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundWidth:I

    return v0
.end method

.method public getIsFullScreen()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mIsFullScreen:Z

    return v0
.end method

.method public getMultitouchMode()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mMultitouchMode:I

    return v0
.end method

.method public getTouchSensor()Lcom/adobe/air/wand/view/TouchSensor;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    return-object v0
.end method

.method public getVisibleBoundHeight()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundHeight:I

    return v0
.end method

.method public getVisibleBoundWidth()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundWidth:I

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGestureListener(IIZFFFFFFF)V
    .locals 12

    .line 343
    new-instance v11, Lcom/adobe/air/wand/view/GestureEventData;

    move-object v0, v11

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/wand/view/GestureEventData;-><init>(IIZFFFFFFF)V

    move-object v0, p0

    .line 348
    iget-object v1, v0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v1, v11}, Lcom/adobe/air/wand/view/TouchSensor;->dispatchEvent(Lcom/adobe/air/wand/view/GestureEventData;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 141
    iget-object v3, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 146
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 148
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 149
    iget-object v10, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    invoke-virtual {v10, v11, v12, v9}, Lcom/adobe/air/wand/view/GestureListener;->setDownTouchPoint(FFI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 157
    iget-object v8, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v8}, Lcom/adobe/air/wand/view/GestureListener;->mayStartNewTransformGesture()V

    :cond_2
    if-ne v2, v3, :cond_3

    .line 162
    iget-object v2, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v2, v7}, Lcom/adobe/air/wand/view/GestureListener;->setCouldBeTwoFingerTap(I)V

    .line 164
    iget-object v2, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {v2, v3, v8, v9}, Lcom/adobe/air/wand/view/GestureListener;->setPrimaryPointOfTwoFingerTap(FFI)V

    .line 166
    iget-object v2, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {v2, v3, v8, v9}, Lcom/adobe/air/wand/view/GestureListener;->setSecondaryPointOfTwoFingerTap(FFI)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 168
    iget-object v3, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v3}, Lcom/adobe/air/wand/view/GestureListener;->getCouldBeTwoFingerTap()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 169
    iget-object v2, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v2, v5}, Lcom/adobe/air/wand/view/GestureListener;->setCouldBeTwoFingerTap(I)V

    goto :goto_1

    :cond_4
    if-ne v2, v7, :cond_5

    .line 170
    iget-object v3, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v3}, Lcom/adobe/air/wand/view/GestureListener;->getCouldBeTwoFingerTap()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 171
    iget-object v2, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v2, v4}, Lcom/adobe/air/wand/view/GestureListener;->setCouldBeTwoFingerTap(I)V

    goto :goto_1

    :cond_5
    if-eq v2, v5, :cond_6

    .line 173
    iget-object v2, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v2, v6}, Lcom/adobe/air/wand/view/GestureListener;->setCouldBeTwoFingerTap(I)V

    .line 177
    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v3, v2, :cond_13

    .line 185
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 186
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iget v10, v0, Lcom/adobe/air/wand/view/CompanionView;->mSkipHeightFromTop:I

    int-to-float v10, v10

    add-float v14, v9, v10

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 190
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 194
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xe

    const/4 v6, 0x4

    if-lt v11, v12, :cond_9

    const v11, -0xe000001

    and-int/2addr v10, v11

    .line 196
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v6, :cond_7

    const/high16 v11, 0x4000000

    or-int/2addr v10, v11

    goto :goto_3

    :cond_7
    if-ne v11, v5, :cond_8

    const/high16 v11, 0x2000000

    or-int/2addr v10, v11

    .line 202
    :cond_8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    and-int/2addr v11, v5

    if-eqz v11, :cond_9

    const/high16 v11, 0x8000000

    or-int/2addr v10, v11

    :cond_9
    if-eqz v8, :cond_a

    const/4 v9, 0x3

    goto :goto_6

    .line 211
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    if-eq v11, v7, :cond_c

    const v11, 0xff00

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    .line 212
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    if-ne v13, v11, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    :goto_5
    and-int/lit16 v9, v9, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    :pswitch_1
    const/4 v8, 0x1

    .line 228
    :pswitch_2
    iget-object v11, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    if-eqz v11, :cond_d

    .line 230
    iget-object v11, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v11}, Lcom/adobe/air/wand/view/GestureListener;->endTwoFingerGesture()Z

    .line 231
    iget-object v11, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-virtual {v11, v7}, Lcom/adobe/air/wand/view/GestureListener;->setCheckForSwipe(Z)V

    goto :goto_6

    :pswitch_3
    const/4 v6, 0x2

    .line 240
    :cond_d
    :goto_6
    invoke-direct {v0, v6, v15, v14}, Lcom/adobe/air/wand/view/CompanionView;->IsTouchEventHandlingAllowed(IFF)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 243
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v20

    if-nez v13, :cond_e

    const/16 v21, 0x1

    goto :goto_7

    :cond_e
    const/16 v21, 0x0

    .line 249
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    mul-int/lit8 v12, v12, 0x3

    .line 250
    new-array v12, v12, [F

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_8
    if-ge v5, v11, :cond_f

    add-int/lit8 v17, v16, 0x1

    .line 254
    invoke-virtual {v1, v3, v5}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v18

    aput v18, v12, v16

    add-int/lit8 v16, v17, 0x1

    .line 255
    invoke-virtual {v1, v3, v5}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v18

    aput v18, v12, v17

    add-int/lit8 v17, v16, 0x1

    .line 256
    invoke-virtual {v1, v3, v5}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v18

    aput v18, v12, v16

    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v17

    goto :goto_8

    .line 259
    :cond_f
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    .line 262
    aput v15, v12, v16

    add-int/lit8 v11, v16, 0x1

    .line 263
    aput v14, v12, v11

    add-int/lit8 v16, v16, 0x2

    .line 264
    aput v5, v12, v16

    and-int/lit8 v10, v10, -0x2

    if-eq v6, v7, :cond_11

    if-ne v9, v4, :cond_10

    or-int/lit8 v9, v10, 0x1

    move/from16 v22, v9

    goto :goto_9

    :cond_10
    move/from16 v22, v10

    .line 276
    :goto_9
    new-instance v11, Lcom/adobe/air/TouchEventData;

    const/16 v18, 0x0

    move-object v9, v11

    move v10, v6

    move-object v4, v11

    move v11, v15

    move-object/from16 v23, v12

    move v12, v14

    move/from16 v24, v13

    move v13, v5

    move/from16 v25, v14

    move/from16 v14, v24

    move/from16 v26, v15

    move/from16 v15, v20

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v19, v22

    invoke-direct/range {v9 .. v19}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 286
    iget-object v9, v0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v9, v4}, Lcom/adobe/air/wand/view/TouchSensor;->dispatchEvent(Lcom/adobe/air/TouchEventData;)V

    goto :goto_a

    :cond_11
    move-object/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v19, v10

    :goto_a
    packed-switch v6, :pswitch_data_1

    const/4 v10, 0x0

    goto :goto_b

    :pswitch_4
    const/4 v10, 0x1

    :goto_b
    if-eqz v10, :cond_12

    .line 303
    new-instance v4, Lcom/adobe/air/TouchEventData;

    move-object v9, v4

    move/from16 v11, v26

    move/from16 v12, v25

    move v13, v5

    move/from16 v14, v24

    move/from16 v15, v20

    move/from16 v16, v20

    move/from16 v17, v21

    move-object/from16 v18, v23

    invoke-direct/range {v9 .. v19}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 313
    iget-object v5, v0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v5, v4}, Lcom/adobe/air/wand/view/TouchSensor;->dispatchEvent(Lcom/adobe/air/TouchEventData;)V

    :cond_12
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 318
    :cond_13
    iget-object v2, v0, Lcom/adobe/air/wand/view/CompanionView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_15

    .line 322
    :try_start_0
    iget-object v2, v0, Lcom/adobe/air/wand/view/CompanionView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_14

    goto :goto_c

    :cond_14
    const/4 v2, 0x0

    goto :goto_d

    :catch_0
    :cond_15
    :goto_c
    const/4 v2, 0x1

    .line 330
    :goto_d
    iget-object v3, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v3, :cond_17

    if-eqz v2, :cond_16

    .line 332
    iget-object v2, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v2, 0x1

    goto :goto_e

    :cond_16
    const/4 v2, 0x0

    :cond_17
    :goto_e
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public returnThis()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public setMultitouchMode(I)V
    .locals 0

    .line 365
    iput p1, p0, Lcom/adobe/air/wand/view/CompanionView;->mMultitouchMode:I

    return-void
.end method
