.class public Lcom/adobe/air/AIRWindowSurfaceView;
.super Landroid/view/SurfaceView;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;,
        Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;,
        Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;,
        Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;,
        Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    }
.end annotation


# static fields
.field static final CURSOR_POS_END_DOCUMENT:I = 0x3

.field static final CURSOR_POS_END_LINE:I = 0x1

.field static final CURSOR_POS_START_DOCUMENT:I = 0x2

.field static final CURSOR_POS_START_LINE:I = 0x0

.field static final ID_COPY:I = 0x3

.field static final ID_COPY_ALL:I = 0x4

.field static final ID_CUT:I = 0x1

.field static final ID_CUT_ALL:I = 0x2

.field static final ID_PASTE:I = 0x5

.field static final ID_SELECT_ALL:I = 0x0

.field static final ID_START_SELECTING:I = 0x7

.field static final ID_STOP_SELECTING:I = 0x8

.field static final ID_SWITCH_INPUT_METHOD:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "AIRWindowSurfaceView"

.field static final LONG_PRESS_DELAY:I = 0x1f4

.field static final MAX_MOVE_ACTION_ALLOWED:I = 0x4

.field static final POST_TOUCH_MESSAGE_AFTER_DELAY:I = 0x0

.field private static final kDefaultBitsPerPixel:I = 0x20

.field private static final kMotionEventButtonSecondary:I = 0x2

.field private static final kMotionEventToolTypeEraser:I = 0x4

.field private static final kMotionEventToolTypeStylus:I = 0x2

.field private static final kTouchActionBegin:I = 0x2

.field private static final kTouchActionEnd:I = 0x4

.field private static final kTouchActionHoverBegin:I = 0x10

.field private static final kTouchActionHoverEnd:I = 0x20

.field private static final kTouchActionHoverMove:I = 0x8

.field private static final kTouchActionMove:I = 0x1

.field private static final kTouchMetaStateIsEraser:I = 0x4000000

.field private static final kTouchMetaStateIsPen:I = 0x2000000

.field private static final kTouchMetaStateMask:I = 0xe000000

.field private static final kTouchMetaStateSideButton1:I = 0x8000000


# instance fields
.field private inTouch:Z

.field public final kMultitouchGesture:I

.field public final kMultitouchNone:I

.field public final kMultitouchRaw:I

.field private final kSampleSize:F

.field private mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private mBoundHeight:I

.field private mBoundWidth:I

.field private mContextMenuVisible:Z

.field private mCurrentOrientation:I

.field private mCurrentSurfaceFormat:I

.field private mDispatchUserTriggeredSkDeactivate:Z

.field private mDownX:F

.field private mDownY:F

.field private mEatTouchRelease:Z

.field protected mFlashEGL:Lcom/adobe/air/FlashEGL;

.field private mFocusedStageText:Lcom/adobe/air/AndroidStageText;

.field private mFocusedWebView:Lcom/adobe/air/AndroidWebView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

.field private mHideSoftKeyboardOnWindowFocusChange:Z

.field private mHoverInProgress:Z

.field private mHoverMetaState:I

.field private mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

.field private mHt:I

.field private mInputConnection:Lcom/adobe/air/AndroidInputConnection;

.field mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

.field private mIsFullScreen:Z

.field private mLastTouchedXCoord:F

.field private mLastTouchedYCoord:F

.field private mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

.field private mMaliWorkaround:Z

.field private mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field private mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field private mMultitouchMode:I

.field private mNeedsCompositingSurface:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintScaled:Landroid/graphics/Paint;

.field private mResizedStageText:Lcom/adobe/air/AndroidStageText;

.field private mResizedWebView:Lcom/adobe/air/AndroidWebView;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaledTouchSlop:I

.field private mSkipHeightFromTop:I

.field private mSurfaceChangedForSoftKeyboard:Z

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceValid:Z

.field private mTextBoxBounds:Landroid/graphics/Rect;

.field private mTrackBallPressed:Z

.field private mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

.field private mVisibleBoundHeight:I

.field private mVisibleBoundWidth:I

.field private mWd:I

.field private mWindowHasFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 4

    .line 258
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchNone:I

    const/4 v1, 0x1

    .line 70
    iput v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchRaw:I

    const/4 v2, 0x2

    .line 71
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchGesture:I

    const/high16 v2, 0x40800000    # 4.0f

    .line 73
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kSampleSize:F

    .line 85
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    .line 86
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    .line 87
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 88
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    const/4 v2, 0x0

    .line 90
    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 91
    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    .line 92
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    .line 93
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    .line 94
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    .line 95
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    .line 99
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    .line 100
    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 101
    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    .line 102
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    .line 110
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    .line 111
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    .line 113
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    .line 116
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 117
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 118
    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    .line 119
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 120
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 121
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 122
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 123
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 124
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    .line 130
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    const/4 v3, -0x1

    .line 131
    iput v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    .line 135
    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    .line 139
    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    .line 142
    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    .line 146
    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    .line 199
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 209
    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 210
    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 254
    new-instance v3, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    invoke-direct {v3, p0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    .line 927
    new-instance v3, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    invoke-direct {v3, p0}, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    .line 259
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 261
    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 263
    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormat(Z)V

    .line 265
    new-instance p2, Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {p2, p1, p0}, Lcom/adobe/air/gestures/AIRGestureListener;-><init>(Landroid/content/Context;Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    .line 266
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {p2, p1, v3, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 267
    new-instance p2, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {p2, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 269
    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setWillNotDraw(Z)V

    .line 271
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setClickable(Z)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setEnabled(Z)V

    .line 273
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setFocusable(Z)V

    .line 274
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setFocusableInTouchMode(Z)V

    .line 275
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaledTouchSlop:I

    .line 276
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 279
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 p2, 0x3

    invoke-virtual {p1, p0, p2}, Lcom/adobe/air/AndroidActivityWrapper;->registerPlane(Landroid/view/SurfaceView;I)V

    return-void
.end method

.method private AllowOSToHandleKeys(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private DoSetOnSystemUiVisibilityChangeListener()V
    .locals 1

    .line 1375
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$3;

    invoke-direct {v0, p0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$3;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    .locals 0

    if-eqz p3, :cond_2

    .line 1975
    sget-object p3, Lcom/adobe/air/AIRWindowSurfaceView$5;->$SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_0

    .line 1985
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    return-object p1

    .line 1983
    :pswitch_0
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    return-object p1

    :pswitch_1
    if-eqz p2, :cond_0

    .line 1981
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    :goto_0
    return-object p1

    :pswitch_2
    if-eqz p2, :cond_1

    .line 1979
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    :goto_1
    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    .line 1992
    sget-object p2, Lcom/adobe/air/AIRWindowSurfaceView$5;->$SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_1

    .line 2001
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    return-object p1

    .line 1998
    :pswitch_3
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    return-object p1

    .line 1996
    :pswitch_4
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    return-object p1

    .line 2005
    :cond_3
    sget-object p1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private HandleMetaKeyAction(Landroid/view/KeyEvent;)V
    .locals 3

    .line 1948
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1965
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1966
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    invoke-direct {p0, v0, p1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1952
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1959
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private HandleShortCuts(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    .line 2052
    iget-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    if-nez p1, :cond_0

    .line 2054
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 2055
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->postCheckLongPress()V

    return v1

    :cond_0
    return v0

    .line 2063
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x43

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 2076
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    .line 2073
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    .line 2082
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    .line 2079
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    .line 2070
    :cond_2
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDeleteTextLine()V

    :goto_0
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private HideSystemUI()V
    .locals 2

    .line 1356
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1358
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1359
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiFlags()Z

    move-result v0

    .line 1362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const/16 v0, 0x1707

    .line 1363
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private IsIMEInFullScreen()Z
    .locals 1

    .line 1045
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    return v0
.end method

.method private IsPointInTextBox(FFI)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1926
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_1

    float-to-int p1, p2

    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-le p1, p2, :cond_1

    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x4

    if-ne p3, p2, :cond_2

    const/4 p2, 0x0

    .line 1940
    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    :cond_2
    return p1
.end method

.method private IsTouchEventHandlingAllowed(IFF)Z
    .locals 4

    .line 1872
    invoke-direct {p0, p2, p3, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->IsPointInTextBox(FFI)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 1876
    iput p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownX:F

    .line 1877
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownY:F

    .line 1878
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    if-eqz v0, :cond_2

    .line 1881
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->postCheckLongPress()V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    if-eqz v0, :cond_2

    .line 1889
    invoke-direct {p0, p2, p3}, Lcom/adobe/air/AIRWindowSurfaceView;->IsTouchMove(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1891
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz p1, :cond_2

    .line 1892
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 1903
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz p1, :cond_2

    .line 1904
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private IsTouchMove(FF)Z
    .locals 1

    .line 1911
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownX:F

    sub-float/2addr v0, p1

    .line 1912
    iget p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownY:F

    sub-float/2addr p1, p2

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double p1, v0

    .line 1913
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1914
    iget p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaledTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$002(Lcom/adobe/air/AIRWindowSurfaceView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AIRWindowSurfaceView;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    return p0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AIRWindowSurfaceView;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchFullScreenEvent(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/air/AIRWindowSurfaceView;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    return p0
.end method

.method static synthetic access$300(Lcom/adobe/air/AIRWindowSurfaceView;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    return p0
.end method

.method static synthetic access$400(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/adobe/air/AIRWindowSurfaceView;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidWebView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidStageText;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    return-object p0
.end method

.method static synthetic access$702(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    return-object p1
.end method

.method static synthetic access$802(Lcom/adobe/air/AIRWindowSurfaceView;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    return-void
.end method

.method public static hasNavBar(Landroid/app/Activity;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 747
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    return v0

    .line 751
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    const/4 v2, 0x4

    .line 752
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_2

    goto :goto_1

    .line 757
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 758
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 759
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 761
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    if-nez p0, :cond_3

    return v0

    .line 765
    :cond_3
    iget p1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq p1, p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v0
.end method

.method private hasStatusBar(Landroid/view/Window;)Z
    .locals 1

    .line 1350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1351
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1352
    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private native nativeCutText(Z)V
.end method

.method private native nativeDeleteTextLine()V
.end method

.method private native nativeDispatchFullScreenEvent(Z)V
.end method

.method private native nativeDispatchSelectionChangeEvent(Z)V
.end method

.method private native nativeForceReDraw()V
.end method

.method private native nativeGetMultitouchMode()I
.end method

.method private native nativeGetSelectedText()Ljava/lang/String;
.end method

.method private native nativeGetSoftKeyboardType()I
.end method

.method private native nativeGetTextBoxBounds()Landroid/graphics/Rect;
.end method

.method private native nativeInsertText(Ljava/lang/String;)V
.end method

.method private native nativeIsEditable()Z
.end method

.method private native nativeIsFullScreenInteractive()Z
.end method

.method private native nativeIsMultiLineTextField()Z
.end method

.method private native nativeIsPasswordField()Z
.end method

.method private native nativeIsTextFieldInSelectionMode()Z
.end method

.method private native nativeIsTextFieldSelectable()Z
.end method

.method private native nativeMoveCursor(I)V
.end method

.method private native nativeOnFormatChangeListener(I)V
.end method

.method private native nativeOnSizeChangedListener(IIZ)V
.end method

.method private native nativePerformWindowPanning(II)Z
.end method

.method private native nativeSelectAllText()V
.end method

.method private native nativeSetKeyboardVisible(Z)V
.end method

.method private native nativeSurfaceCreated()V
.end method

.method private postCheckLongPress()V
    .locals 3

    .line 1757
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-nez v0, :cond_0

    .line 1758
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setSurfaceFormatImpl(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1083
    new-instance p1, Lcom/adobe/air/AIRWindowSurfaceView$2;

    invoke-direct {p1, p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView$2;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;I)V

    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1089
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1090
    iput p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    :goto_0
    return-void
.end method

.method private static supportsSystemUiFlags()Z
    .locals 2

    .line 1344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static supportsSystemUiVisibilityAPI()Z
    .locals 2

    .line 1338
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public DispatchSoftKeyboardEventOnBackKey()V
    .locals 1

    .line 2141
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    if-nez v0, :cond_1

    .line 2143
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->IsIMEInFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-nez v0, :cond_2

    .line 2144
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2146
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 2148
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2150
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    .line 2154
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_3

    .line 2155
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    :cond_3
    return-void
.end method

.method GetMetaKeyCharacter(Landroid/view/KeyEvent;)I
    .locals 3

    .line 2011
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2013
    :goto_1
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_3

    :cond_2
    or-int/lit8 v0, v0, 0x2

    .line 2015
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p1

    return p1
.end method

.method public HideSoftKeyboardOnWindowFocusChange()V
    .locals 1

    const/4 v0, 0x1

    .line 2044
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    return-void
.end method

.method public IsLandScape()Z
    .locals 2

    .line 1543
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsPasswordVisibleSettingEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 2106
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_password"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method public IsSurfaceChangedForSoftKeyboard()Z
    .locals 1

    .line 2160
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    return v0
.end method

.method public IsTouchUpHandlingAllowed()Z
    .locals 1

    .line 2116
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public RestartInput()V
    .locals 1

    .line 1628
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1629
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1631
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1634
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->Reset()V

    :cond_1
    return-void
.end method

.method public SetSelectionMode(Z)V
    .locals 0

    .line 2125
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchSelectionChangeEvent(Z)V

    return-void
.end method

.method public SetSurfaceChangedForSoftKeyboard(Z)V
    .locals 0

    .line 2171
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    return-void
.end method

.method public clearFullScreen()V
    .locals 3

    const/4 v0, 0x0

    .line 1432
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 1433
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1435
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1437
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiFlags()Z

    move-result v1

    .line 1438
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1440
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1445
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 1446
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    return-void
.end method

.method protected draw(IIIILandroid/graphics/Bitmap;)V
    .locals 3

    .line 1138
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v0, :cond_0

    return-void

    .line 1141
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1145
    iget p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 1149
    new-instance p3, Landroid/graphics/Rect;

    iget p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {p3, p2, p1, p4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1151
    invoke-static {v0, p3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    .line 1154
    :cond_1
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1155
    invoke-virtual {p4, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1157
    iget p3, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    iput p3, p4, Landroid/graphics/Rect;->top:I

    .line 1158
    iget p3, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p1

    iput p3, p4, Landroid/graphics/Rect;->bottom:I

    .line 1161
    iget-boolean p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz p3, :cond_2

    .line 1163
    new-instance p3, Landroid/graphics/Rect;

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {p3, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1164
    invoke-virtual {p4, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1167
    :cond_2
    iget-object p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p3, p4}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p3

    .line 1172
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v0, :cond_4

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v1, p1

    if-le v0, v1, :cond_4

    .line 1174
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v0, p1

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1179
    :cond_3
    iget-object p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p3, v0}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p3

    move-object p4, v0

    .line 1184
    :cond_4
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1187
    :try_start_1
    invoke-virtual {p3, p4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    if-eqz p1, :cond_5

    .line 1190
    iget-boolean p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz p4, :cond_5

    const/high16 p4, -0x1000000

    .line 1191
    invoke-virtual {p3, p4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1196
    :cond_5
    iget-boolean p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    if-eqz p4, :cond_6

    const/4 p4, 0x0

    .line 1197
    iput-object p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1199
    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, p2, p4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 1201
    :cond_6
    iget-object p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    if-nez p4, :cond_7

    iget p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v1, 0x4

    if-eq p4, v1, :cond_7

    .line 1202
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1203
    iget-object p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1204
    iget-object p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_7
    :goto_1
    const/4 p2, 0x0

    neg-int p1, p1

    int-to-float p1, p1

    .line 1207
    iget-object p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p5, p2, p1, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1208
    monitor-exit v0

    if-eqz p3, :cond_9

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p3, :cond_8

    .line 1221
    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2, p3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1223
    :cond_8
    throw p1

    :catch_0
    nop

    if-eqz p3, :cond_9

    .line 1221
    :goto_2
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1224
    :cond_9
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz p1, :cond_a

    .line 1225
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    :cond_a
    return-void
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1324
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/air/AIRWindowSurfaceView;->draw(IIIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 0

    .line 1329
    invoke-virtual/range {p0 .. p11}, Lcom/adobe/air/AIRWindowSurfaceView;->drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V

    return-void
.end method

.method protected drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 4

    .line 1231
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1237
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p8, p6

    add-int/2addr p9, p7

    invoke-direct {v1, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    if-eqz p10, :cond_1

    .line 1244
    new-instance p6, Landroid/graphics/Rect;

    iget p7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget p8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {p6, v2, v2, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 1246
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p6, v3

    .line 1248
    :goto_0
    iget p7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    if-eqz p7, :cond_4

    .line 1250
    iget p7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1251
    new-instance p8, Landroid/graphics/Rect;

    iget p9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {p8, v2, p7, p9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1253
    invoke-static {v1, p8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p9

    if-nez p9, :cond_2

    return-void

    .line 1256
    :cond_2
    new-instance p9, Landroid/graphics/Rect;

    invoke-direct {p9, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1257
    invoke-virtual {p9, p8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1259
    iget p8, p9, Landroid/graphics/Rect;->top:I

    sub-int/2addr p8, p7

    iput p8, p9, Landroid/graphics/Rect;->top:I

    .line 1260
    iget p8, p9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, p7

    iput p8, p9, Landroid/graphics/Rect;->bottom:I

    if-nez p10, :cond_3

    move-object p6, p9

    :cond_3
    if-nez p10, :cond_5

    .line 1270
    iget p8, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v1, p7

    if-le p8, v1, :cond_5

    .line 1271
    iget p8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr p8, p7

    iput p8, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_4
    move-object p9, v1

    .line 1275
    :cond_5
    :goto_1
    new-instance p7, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {p7, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1277
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p6}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1278
    :try_start_1
    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p10, :cond_6

    .line 1284
    :try_start_2
    invoke-static {p11}, Landroid/graphics/Color;->red(I)I

    move-result p3

    invoke-static {p11}, Landroid/graphics/Color;->green(I)I

    move-result p4

    invoke-static {p11}, Landroid/graphics/Color;->blue(I)I

    move-result p6

    invoke-virtual {p1, p3, p4, p6}, Landroid/graphics/Canvas;->drawRGB(III)V

    goto :goto_2

    :catchall_0
    move-exception p3

    goto :goto_4

    .line 1290
    :cond_6
    :goto_2
    iget-boolean p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    if-eqz p3, :cond_7

    .line 1291
    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1293
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 1295
    :cond_7
    iget-object p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    if-nez p3, :cond_8

    iget p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 p4, 0x4

    if-eq p3, p4, :cond_8

    .line 1296
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    .line 1297
    iget-object p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1302
    :cond_8
    :goto_3
    iget-object p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p7, p9, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1303
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_a

    .line 1315
    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1303
    :goto_4
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_5

    :catch_0
    move-object v0, p1

    goto :goto_6

    :catchall_2
    move-exception p1

    :goto_5
    if-eqz v0, :cond_9

    .line 1315
    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1316
    :cond_9
    throw p1

    :catch_1
    nop

    :goto_6
    if-eqz v0, :cond_a

    .line 1315
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1317
    :cond_a
    :goto_7
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz p1, :cond_b

    .line 1318
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    :cond_b
    return-void
.end method

.method public forceSoftKeyboardDown()V
    .locals 2

    .line 874
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    const/4 v0, 0x0

    .line 875
    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setScrollTo(I)Z

    .line 877
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v1, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 882
    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    const/4 v1, 0x1

    .line 883
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 884
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 8

    const/4 v0, 0x2

    .line 2187
    new-array v0, v0, [I

    .line 2188
    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 2189
    aget v3, v0, v1

    const/4 v2, 0x1

    aget v4, v0, v2

    iget v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    iget v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v1
.end method

.method public getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0
.end method

.method public getAppSpecifiedPixelFormat()I
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->useRGB565()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    return v0

    :cond_0
    const/16 v0, 0x20

    return v0
.end method

.method public getBoundHeight()I
    .locals 1

    .line 1463
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    return v0
.end method

.method public getBoundWidth()I
    .locals 1

    .line 1456
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    return v0
.end method

.method public getColorDepth()I
    .locals 2

    .line 1482
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    return v0

    :cond_0
    const/16 v0, 0x20

    .line 1488
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "window"

    .line 1491
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1493
    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    .line 1494
    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v0

    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 1496
    iget v0, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    :cond_1
    return v0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .line 1643
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public getIsFullScreen()Z
    .locals 1

    .line 1334
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    return v0
.end method

.method public getKeyboardHeight()I
    .locals 2

    .line 2165
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMultitouchMode()I
    .locals 1

    .line 720
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    return v0
.end method

.method public getVideoView()Lcom/adobe/flashruntime/shared/VideoView;
    .locals 3

    .line 2176
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    if-nez v0, :cond_0

    .line 2178
    new-instance v0, Lcom/adobe/flashruntime/air/VideoViewAIR;

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {v0, v1, v2}, Lcom/adobe/flashruntime/air/VideoViewAIR;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    .line 2179
    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    .line 2181
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    return-object v0
.end method

.method public getVisibleBoundHeight()I
    .locals 1

    .line 1477
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    return v0
.end method

.method public getVisibleBoundWidth()I
    .locals 1

    .line 1470
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    return v0
.end method

.method public isStageTextInFocus()Z
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStageWebViewInFocus()Z
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView;->isInTextEditingMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSurfaceValid()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    return v0
.end method

.method public native nativeDispatchUserTriggeredSkDeactivateEvent()V
.end method

.method public native nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;
.end method

.method public native nativeGetTextContentLength()I
.end method

.method public native nativeIsTextSelected()Z
.end method

.method public native nativeOnDoubleClickListener(FF)Z
.end method

.method public native nativeOnKeyListener(IIIZZZ)Z
.end method

.method public native nativeShowOriginalRect()V
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 8

    .line 1673
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 1675
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsFullScreenInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1677
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1679
    new-instance v1, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView$1;)V

    .line 1682
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v2

    .line 1683
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextFieldSelectable()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    .line 1692
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContentLength()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 1695
    sget-object v6, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_SELECT_ALL:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v6}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v5, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x61

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1696
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextFieldInSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    .line 1698
    sget-object v7, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_STOP_SELECTING_TEXT:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v7}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    const/4 v6, 0x7

    .line 1702
    sget-object v7, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_SELECT_TEXT:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v7}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1705
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v3, :cond_8

    .line 1707
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextSelected()Z

    move-result v3

    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    .line 1713
    sget-object v6, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CUT_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v6}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 1714
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x78

    .line 1715
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    const/4 v6, 0x2

    .line 1719
    sget-object v7, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CUT_ALL_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v7}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 1720
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    const/4 v3, 0x3

    .line 1726
    sget-object v6, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_COPY_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v6}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v3, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 1727
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v6, 0x63

    .line 1728
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_3

    :cond_7
    const/4 v3, 0x4

    .line 1732
    sget-object v6, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_COPY_ALL_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v6}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v3, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 1733
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_8
    :goto_3
    if-eqz v2, :cond_a

    if-eqz v0, :cond_9

    .line 1740
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    .line 1742
    sget-object v2, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_PASTE_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v2}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1743
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x76

    .line 1744
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_9
    const/4 v0, 0x6

    .line 1746
    sget-object v2, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_INPUT_METHOD_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v2}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1747
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1750
    :cond_a
    iput-boolean v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 1751
    iput-boolean v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 1752
    sget-object v0, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CONTEXT_MENU_TITLE_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v0}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 1560
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1562
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1568
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1570
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1573
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSoftKeyboardType()I

    move-result v0

    .line 1574
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x2002

    .line 1595
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 1592
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x21

    .line 1589
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1586
    :pswitch_3
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    .line 1583
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x11

    .line 1580
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1602
    :goto_0
    :pswitch_6
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1606
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsMultiLineTextField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1608
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1610
    :cond_1
    new-instance v0, Lcom/adobe/air/AndroidInputConnection;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidInputConnection;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    const/4 v0, -0x1

    .line 1611
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1612
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    const/4 v0, 0x0

    .line 1613
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1617
    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    .line 1618
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1621
    :goto_1
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    const-string v0, "AIRWindowSurfaceView"

    const-string v1, "*** *** onFocusChanged: AIR"

    .line 430
    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 431
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    if-nez v1, :cond_0

    .line 435
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 436
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    .line 439
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 413
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    float-to-int v13, v0

    if-eqz v13, :cond_0

    .line 415
    new-instance v0, Lcom/adobe/air/TouchEventData;

    const/16 v4, 0x100

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v5, v1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    float-to-int p1, p1

    int-to-float v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    const/4 p1, 0x0

    .line 416
    invoke-static {v2, v0, p1}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    move-result p1

    return p1

    .line 419
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    .line 423
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 327
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->AllowOSToHandleKeys(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 330
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 332
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v2, v3, :cond_2

    .line 335
    :cond_1
    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyCharacter(Landroid/view/KeyEvent;)I

    move-result v0

    :cond_2
    move v5, v0

    .line 338
    invoke-direct {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->HandleMetaKeyAction(Landroid/view/KeyEvent;)V

    .line 340
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->HandleShortCuts(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 348
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v8

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    move-result p1

    .line 350
    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz p2, :cond_4

    .line 351
    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {p2}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    :cond_4
    return p1

    :cond_5
    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2131
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2133
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 365
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->AllowOSToHandleKeys(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 368
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 369
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v3, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v2, v3, :cond_2

    .line 372
    :cond_1
    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyCharacter(Landroid/view/KeyEvent;)I

    move-result v0

    :cond_2
    move v5, v0

    .line 375
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    const/16 v0, 0x17

    if-ne p1, v0, :cond_4

    .line 379
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 383
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v8

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    move-result p1

    .line 385
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    :cond_5
    if-nez p1, :cond_6

    .line 388
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 389
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_6

    .line 397
    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p2}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 398
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    const/4 p1, 0x1

    return p1

    :cond_6
    return p1

    :cond_7
    return v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 709
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTextBoxContextMenuItem(I)Z
    .locals 4

    .line 1780
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v2

    .line 1824
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto/16 :goto_0

    .line 1820
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto/16 :goto_0

    .line 1854
    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1856
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_0

    .line 1813
    :pswitch_3
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1815
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeInsertText(Ljava/lang/String;)V

    .line 1816
    :cond_0
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_0

    .line 1801
    :pswitch_4
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    iget-object p1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    .line 1804
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1806
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1808
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1788
    :pswitch_5
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSelectedText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1791
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1793
    invoke-static {p1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1795
    :cond_2
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    :cond_3
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_0

    .line 1841
    :pswitch_6
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    iget-object p1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    .line 1844
    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeCutText(Z)V

    .line 1845
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1847
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1849
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1828
    :pswitch_7
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSelectedText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1831
    invoke-direct {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeCutText(Z)V

    .line 1832
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1834
    invoke-static {p1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1836
    :cond_5
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    :cond_6
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_0

    .line 1784
    :pswitch_8
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSelectAllText()V

    .line 1863
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz p1, :cond_8

    .line 1864
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    :cond_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 445
    iput-boolean v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x0

    const/16 v5, 0x9

    if-eq v3, v5, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    const/4 v5, 0x7

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 452
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/AIRWindowSurfaceView;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v5, :cond_4

    .line 454
    iget-object v5, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v5, v4}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 458
    iget-object v6, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    invoke-virtual {v6}, Lcom/adobe/air/AndroidStageText;->getPreventDefault()Z

    move-result v6

    if-eq v6, v2, :cond_4

    .line 460
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 461
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 462
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    .line 465
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 468
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x5

    if-eq v3, v5, :cond_5

    if-nez v3, :cond_6

    :cond_5
    const/4 v6, 0x0

    .line 480
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 482
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 483
    iget-object v8, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v8, v9, v10, v7}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    .line 491
    iget-object v6, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v6}, Lcom/adobe/air/gestures/AIRGestureListener;->mayStartNewTransformGesture()V

    :cond_7
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v3, v5, :cond_8

    .line 496
    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v3, v2}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    .line 498
    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {v3, v5, v8, v9}, Lcom/adobe/air/gestures/AIRGestureListener;->setPrimaryPointOfTwoFingerTap(FFI)V

    .line 500
    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {v3, v5, v8, v9}, Lcom/adobe/air/gestures/AIRGestureListener;->setSecondaryPointOfTwoFingerTap(FFI)V

    goto :goto_4

    :cond_8
    const/4 v5, 0x6

    if-ne v3, v5, :cond_9

    .line 502
    iget-object v5, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v5}, Lcom/adobe/air/gestures/AIRGestureListener;->getCouldBeTwoFingerTap()I

    move-result v5

    if-ne v5, v2, :cond_9

    .line 503
    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v3, v7}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto :goto_4

    :cond_9
    if-ne v3, v2, :cond_a

    .line 504
    iget-object v5, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v5}, Lcom/adobe/air/gestures/AIRGestureListener;->getCouldBeTwoFingerTap()I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 505
    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v3, v6}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto :goto_4

    :cond_a
    if-eq v3, v7, :cond_b

    .line 507
    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v3, v4}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    .line 509
    :cond_b
    :goto_4
    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_5
    if-ge v5, v3, :cond_1f

    .line 520
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 521
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget v11, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    int-to-float v11, v11

    add-float v14, v10, v11

    .line 523
    iput v15, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    .line 524
    iput v14, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 528
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 533
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x4

    const/16 v4, 0xe

    if-lt v12, v4, :cond_e

    const v12, -0xe000001

    and-int/2addr v11, v12

    .line 535
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v12

    if-ne v12, v6, :cond_c

    const/high16 v12, 0x4000000

    or-int/2addr v11, v12

    goto :goto_6

    :cond_c
    if-ne v12, v7, :cond_d

    const/high16 v12, 0x2000000

    or-int/2addr v11, v12

    .line 541
    :cond_d
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_e

    const/high16 v12, 0x8000000

    or-int/2addr v11, v12

    :cond_e
    const/16 v12, 0x8

    if-eqz v9, :cond_f

    move/from16 v22, v8

    move/from16 v23, v13

    const/4 v7, 0x0

    const/4 v8, 0x3

    goto/16 :goto_b

    .line 550
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-eq v6, v2, :cond_11

    const v6, 0xff00

    and-int/2addr v6, v10

    shr-int/2addr v6, v12

    .line 551
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-ne v13, v6, :cond_10

    goto :goto_9

    :cond_10
    move/from16 v22, v8

    move v8, v10

    move/from16 v23, v13

    :goto_7
    const/4 v6, 0x1

    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_b

    :cond_11
    :goto_9
    and-int/lit16 v6, v10, 0xff

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move/from16 v22, v8

    move/from16 v23, v13

    .line 591
    iget-object v7, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->setLastMove(J)V

    move v8, v6

    goto :goto_7

    :pswitch_1
    const/16 v10, 0x20

    move/from16 v22, v8

    move/from16 v23, v13

    const/4 v7, 0x0

    move v8, v6

    const/16 v6, 0x20

    goto :goto_b

    :pswitch_2
    const/16 v10, 0x10

    move/from16 v22, v8

    move/from16 v23, v13

    const/4 v7, 0x0

    move v8, v6

    const/16 v6, 0x10

    goto :goto_b

    .line 566
    :pswitch_3
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v4, :cond_12

    .line 568
    iget-object v10, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    move/from16 v22, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->setLastMove(J)V

    .line 569
    iput v11, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    .line 570
    iget-boolean v7, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    if-nez v7, :cond_13

    .line 572
    iget-object v7, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    move/from16 v23, v13

    const-wide/16 v12, 0x1f4

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v12, v13}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 574
    iput-boolean v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    move v8, v6

    const/16 v6, 0x8

    const/4 v7, 0x1

    goto :goto_b

    :cond_12
    move/from16 v22, v8

    :cond_13
    move/from16 v23, v13

    move v8, v6

    const/16 v6, 0x8

    goto :goto_8

    :pswitch_4
    move/from16 v22, v8

    move/from16 v23, v13

    const/4 v9, 0x1

    goto :goto_a

    :pswitch_5
    move/from16 v22, v8

    move/from16 v23, v13

    .line 587
    :goto_a
    iget-object v7, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v7}, Lcom/adobe/air/gestures/AIRGestureListener;->endTwoFingerGesture()Z

    .line 588
    iget-object v7, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v7, v2}, Lcom/adobe/air/gestures/AIRGestureListener;->setCheckForSwipe(Z)V

    move v8, v6

    const/4 v6, 0x4

    goto :goto_8

    :pswitch_6
    move/from16 v22, v8

    move/from16 v23, v13

    move v8, v6

    const/4 v6, 0x2

    goto :goto_8

    .line 597
    :goto_b
    invoke-direct {v0, v6, v15, v14}, Lcom/adobe/air/AIRWindowSurfaceView;->IsTouchEventHandlingAllowed(IFF)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 600
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v21

    if-nez v23, :cond_14

    const/16 v25, 0x1

    goto :goto_c

    :cond_14
    const/16 v25, 0x0

    .line 606
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    add-int/lit8 v12, v10, 0x1

    const/4 v13, 0x3

    mul-int/lit8 v12, v12, 0x3

    .line 607
    new-array v13, v12, [F

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_d
    if-ge v12, v10, :cond_15

    add-int/lit8 v17, v16, 0x1

    .line 611
    invoke-virtual {v1, v5, v12}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v18

    aput v18, v13, v16

    add-int/lit8 v16, v17, 0x1

    .line 612
    invoke-virtual {v1, v5, v12}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v18

    aput v18, v13, v17

    add-int/lit8 v17, v16, 0x1

    .line 613
    invoke-virtual {v1, v5, v12}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v18

    aput v18, v13, v16

    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v17

    goto :goto_d

    .line 616
    :cond_15
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v26

    .line 619
    aput v15, v13, v16

    add-int/lit8 v10, v16, 0x1

    .line 620
    aput v14, v13, v10

    add-int/lit8 v16, v16, 0x2

    .line 621
    aput v26, v13, v16

    and-int/lit8 v27, v11, -0x2

    const/16 v12, 0x8

    if-eq v6, v12, :cond_16

    packed-switch v6, :pswitch_data_1

    const/4 v11, 0x0

    goto :goto_e

    :pswitch_7
    const/4 v11, 0x1

    goto :goto_e

    .line 632
    :cond_16
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v4, :cond_17

    if-eqz v7, :cond_17

    const/16 v4, 0x18

    const/16 v11, 0x18

    goto :goto_e

    :cond_17
    const/16 v11, 0x8

    :goto_e
    const/4 v4, 0x0

    if-eqz v11, :cond_19

    .line 652
    new-instance v7, Lcom/adobe/air/TouchEventData;

    move-object v10, v7

    const/16 v2, 0x8

    move v12, v15

    move-object/from16 v19, v13

    move v13, v14

    move/from16 v24, v14

    move/from16 v14, v26

    move/from16 v28, v15

    move/from16 v15, v23

    move/from16 v16, v21

    move/from16 v17, v21

    move/from16 v18, v25

    move/from16 v20, v27

    invoke-direct/range {v10 .. v20}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    if-eqz v22, :cond_18

    const/4 v10, 0x0

    .line 662
    invoke-static {v10, v7, v4}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v7, 0x1

    goto :goto_f

    :cond_18
    const/4 v7, 0x0

    goto :goto_f

    :cond_19
    move/from16 v24, v14

    move/from16 v28, v15

    const/16 v2, 0x8

    move/from16 v7, v22

    :goto_f
    if-eq v6, v2, :cond_1c

    const/4 v2, 0x1

    if-eq v6, v2, :cond_1d

    const/4 v15, 0x3

    if-ne v8, v15, :cond_1a

    or-int/lit8 v8, v27, 0x1

    move/from16 v20, v8

    goto :goto_10

    :cond_1a
    move/from16 v20, v27

    .line 672
    :goto_10
    new-instance v8, Lcom/adobe/air/TouchEventData;

    const/16 v19, 0x0

    move-object v10, v8

    move v11, v6

    move/from16 v12, v28

    move/from16 v13, v24

    move/from16 v14, v26

    const/4 v6, 0x3

    move/from16 v15, v23

    move/from16 v16, v21

    move/from16 v17, v21

    move/from16 v18, v25

    invoke-direct/range {v10 .. v20}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    if-eqz v7, :cond_1b

    const/4 v7, 0x0

    .line 682
    invoke-static {v7, v8, v4}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    :goto_11
    move v8, v4

    goto :goto_12

    :cond_1c
    const/4 v2, 0x1

    :cond_1d
    const/4 v6, 0x3

    move v8, v7

    goto :goto_12

    :cond_1e
    const/4 v6, 0x3

    move/from16 v8, v22

    :goto_12
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x2

    goto/16 :goto_5

    :cond_1f
    move/from16 v22, v8

    goto :goto_13

    :cond_20
    const/16 v22, 0x0

    :goto_13
    if-eqz v22, :cond_21

    .line 694
    :try_start_0
    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_21

    const/16 v22, 0x1

    goto :goto_14

    :cond_21
    const/16 v22, 0x0

    :catch_0
    :goto_14
    if-eqz v22, :cond_22

    .line 701
    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    goto :goto_15

    :cond_22
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 702
    :goto_15
    iput-boolean v1, v0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 295
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    .line 296
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 306
    :cond_1
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 309
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    :cond_3
    if-eqz p1, :cond_4

    .line 314
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    :cond_4
    return-void
.end method

.method public panStageTextInFocus()J
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    .line 1040
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public panStageWebViewInFocus()J
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    .line 999
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public performLongClick()Z
    .locals 4

    .line 1650
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1652
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1655
    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-eqz v0, :cond_2

    .line 1659
    :cond_1
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 1660
    invoke-super {p0}, Landroid/view/SurfaceView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public returnThis()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public setCompositingHint(Z)V
    .locals 2

    .line 1125
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1126
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    if-eq v1, v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_1
    return-void

    .line 1132
    :cond_2
    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormat(Z)V

    return-void
.end method

.method public setFlashEGL(Lcom/adobe/air/FlashEGL;)V
    .locals 0

    .line 2099
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    return-void
.end method

.method public setFullScreen()V
    .locals 3

    .line 1397
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1399
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 1400
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1402
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1405
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1410
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1413
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1421
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "SAMSUNG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->hasStatusBar(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/16 v1, 0x400

    .line 1423
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    return-void
.end method

.method public setInputConnection(Lcom/adobe/air/AndroidInputConnection;)V
    .locals 0

    .line 2094
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    return-void
.end method

.method public setMultitouchMode(I)V
    .locals 0

    .line 715
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    return-void
.end method

.method public setScrollTo(I)Z
    .locals 2

    .line 1052
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1055
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1060
    new-instance v1, Lcom/adobe/air/AIRWindowSurfaceView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView$1;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;ILandroid/widget/RelativeLayout;)V

    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setSurfaceFormat(Z)V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->useRGB565()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1099
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->needsCompositingSurface()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isGingerbread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1102
    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_1

    .line 1100
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_1

    .line 1110
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    if-eqz v0, :cond_3

    .line 1112
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    .line 1116
    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    :goto_1
    return-void
.end method

.method public showActionScript2Warning()V
    .locals 3

    .line 1518
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1521
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1523
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "Your application is attempting to run ActionScript2.0, which is not supported on smart phone profile. \nSee the Adobe Developer Connection for more info www.adobe.com/devnet"

    .line 1524
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1525
    invoke-static {v2, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 1527
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Action Script 2.0"

    .line 1528
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "OK"

    .line 1529
    new-instance v2, Lcom/adobe/air/AIRWindowSurfaceView$4;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRWindowSurfaceView$4;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1535
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public showSoftKeyboard(Z)V
    .locals 0

    .line 955
    invoke-virtual {p0, p1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    return-void
.end method

.method public showSoftKeyboard(ZLandroid/view/View;)V
    .locals 3

    const-string v0, "AIRWindowSurfaceView"

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSoftKeyboard show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez p1, :cond_2

    .line 936
    iget-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 938
    iput-boolean p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 941
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz p1, :cond_1

    .line 942
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidInputConnection;->Reset()V

    .line 943
    :cond_1
    invoke-direct {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    goto :goto_0

    .line 947
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 948
    invoke-virtual {p2}, Landroid/view/View;->requestFocusFromTouch()Z

    const/4 p1, 0x1

    .line 949
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 774
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "window"

    .line 776
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 777
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 779
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->hasNavBar(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->hasStatusBar(Landroid/view/Window;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 780
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSystemUI()V

    .line 783
    :cond_1
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->hasNavBar(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->hasStatusBar(Landroid/view/Window;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt p1, v2, :cond_3

    .line 784
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 786
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 788
    :goto_0
    iget p1, v1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    .line 789
    iget p1, v1, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    .line 791
    iput p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    .line 792
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    .line 797
    invoke-direct {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnFormatChangeListener(I)V

    .line 799
    iget-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    const/4 p2, 0x1

    if-nez p1, :cond_4

    .line 801
    iput-boolean p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 802
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->onSurfaceInitialized()V

    .line 803
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetMultitouchMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->setMultitouchMode(I)V

    .line 805
    :cond_4
    iget-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-eqz p1, :cond_b

    .line 807
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 808
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 809
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    if-eq p1, p2, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 811
    :cond_5
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    if-ge p4, v0, :cond_8

    if-nez p4, :cond_6

    return-void

    .line 816
    :cond_6
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v0, p4

    .line 817
    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativePerformWindowPanning(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 819
    iput-boolean p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    return-void

    .line 836
    :cond_7
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(Z)V

    .line 837
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 838
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 841
    :cond_8
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    if-eq v0, p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 p2, 0x0

    .line 843
    :goto_1
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    .line 844
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    .line 845
    iput p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    .line 849
    iget p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {p0, p1, p3, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnSizeChangedListener(IIZ)V

    .line 853
    invoke-static {}, Lcom/adobe/air/OrientationManager;->getOrientationManager()Lcom/adobe/air/OrientationManager;

    move-result-object p1

    .line 854
    iget-boolean p2, p1, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    if-eqz p2, :cond_a

    .line 856
    iget p2, p1, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget p3, p1, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {p1, p2, p3}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 857
    iput-boolean v1, p1, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    .line 862
    :cond_a
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeForceReDraw()V

    .line 867
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    :cond_b
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 726
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 729
    iget-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz p1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V

    .line 735
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isStarted()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isResumed()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "SAMSUNG"

    .line 736
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "GT-I9300"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_3

    .line 739
    :cond_2
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSurfaceCreated()V

    :cond_3
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 895
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 896
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    invoke-interface {p1}, Lcom/adobe/air/FlashEGL;->DestroyWindowSurface()Z

    .line 897
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->onSurfaceDestroyed()V

    .line 898
    iget-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    return-void
.end method

.method public updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1005
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    goto :goto_0

    .line 1006
    :cond_0
    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 1007
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    :cond_1
    :goto_0
    return-void
.end method

.method public updateFocusedStageWebView(Lcom/adobe/air/AndroidWebView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 961
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    goto :goto_0

    .line 962
    :cond_0
    iget-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 963
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    :cond_1
    :goto_0
    return-void
.end method
