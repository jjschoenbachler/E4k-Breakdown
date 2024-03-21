.class public Lkankan/wheel/widget/WheelScroller;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkankan/wheel/widget/WheelScroller$ScrollingListener;
    }
.end annotation


# static fields
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final SCROLLING_DURATION:I = 0x190


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isScrollingPerformed:Z

.field private lastScrollY:I

.field private lastTouchedY:F

.field private listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkankan/wheel/widget/WheelScroller$ScrollingListener;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lkankan/wheel/widget/WheelScroller$1;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelScroller$1;-><init>(Lkankan/wheel/widget/WheelScroller;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lkankan/wheel/widget/WheelScroller;->MESSAGE_SCROLL:I

    const/4 v1, 0x1

    .line 178
    iput v1, p0, Lkankan/wheel/widget/WheelScroller;->MESSAGE_JUSTIFY:I

    .line 199
    new-instance v1, Lkankan/wheel/widget/WheelScroller$2;

    invoke-direct {v1, p0}, Lkankan/wheel/widget/WheelScroller$2;-><init>(Lkankan/wheel/widget/WheelScroller;)V

    iput-object v1, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    .line 86
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lkankan/wheel/widget/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lkankan/wheel/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 87
    iget-object v1, p0, Lkankan/wheel/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 89
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 91
    iput-object p2, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    .line 92
    iput-object p1, p0, Lkankan/wheel/widget/WheelScroller;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lkankan/wheel/widget/WheelScroller;)I
    .locals 0

    .line 34
    iget p0, p0, Lkankan/wheel/widget/WheelScroller;->lastScrollY:I

    return p0
.end method

.method static synthetic access$002(Lkankan/wheel/widget/WheelScroller;I)I
    .locals 0

    .line 34
    iput p1, p0, Lkankan/wheel/widget/WheelScroller;->lastScrollY:I

    return p1
.end method

.method static synthetic access$100(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;
    .locals 0

    .line 34
    iget-object p0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$200(Lkankan/wheel/widget/WheelScroller;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lkankan/wheel/widget/WheelScroller;)Lkankan/wheel/widget/WheelScroller$ScrollingListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    return-object p0
.end method

.method static synthetic access$400(Lkankan/wheel/widget/WheelScroller;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lkankan/wheel/widget/WheelScroller;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->justify()V

    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 194
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private justify()V
    .locals 1

    .line 229
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onJustify()V

    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, v0}, Lkankan/wheel/widget/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method private setNextMessage(I)V
    .locals 1

    .line 186
    invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->clearMessages()V

    .line 187
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startScrolling()V
    .locals 1

    .line 237
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lkankan/wheel/widget/WheelScroller;->isScrollingPerformed:Z

    .line 239
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onStarted()V

    :cond_0
    return-void
.end method


# virtual methods
.method finishScrolling()V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onFinished()V

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lkankan/wheel/widget/WheelScroller;->isScrollingPerformed:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lkankan/wheel/widget/WheelScroller;->lastTouchedY:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->startScrolling()V

    .line 145
    iget-object v2, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    invoke-interface {v2, v0}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lkankan/wheel/widget/WheelScroller;->lastTouchedY:F

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lkankan/wheel/widget/WheelScroller;->lastTouchedY:F

    .line 136
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 137
    invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->clearMessages()V

    .line 151
    :cond_2
    :goto_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 152
    invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->justify()V

    :cond_3
    return v1
.end method

.method public scroll(II)V
    .locals 7

    .line 110
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lkankan/wheel/widget/WheelScroller;->lastScrollY:I

    .line 114
    iget-object v1, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    move v6, p2

    goto :goto_0

    :cond_0
    const/16 p2, 0x190

    const/16 v6, 0x190

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 115
    invoke-direct {p0, v0}, Lkankan/wheel/widget/WheelScroller;->setNextMessage(I)V

    .line 117
    invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->startScrolling()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 101
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lkankan/wheel/widget/WheelScroller;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method public stopScrolling()V
    .locals 2

    .line 124
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method
