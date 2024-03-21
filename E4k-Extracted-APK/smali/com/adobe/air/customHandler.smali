.class public Lcom/adobe/air/customHandler;
.super Landroid/os/Handler;
.source "customHandler.java"


# static fields
.field public static final KEY_MSG_ID:I = 0x461

.field public static final TIME_OUT_MSG_ID:I = 0x45f

.field public static final TOUCH_MSG_ID:I = 0x460

.field public static mRunning:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public native callTimeoutFunction(II)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 26
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x45f

    if-ne v0, v1, :cond_0

    .line 28
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/air/customHandler;->callTimeoutFunction(II)V

    goto :goto_0

    .line 30
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x460

    if-ne v0, v1, :cond_1

    .line 32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/TouchEventData;

    .line 33
    iget v1, p1, Lcom/adobe/air/TouchEventData;->mTouchEventType:I

    iget v2, p1, Lcom/adobe/air/TouchEventData;->mXCoord:F

    iget v3, p1, Lcom/adobe/air/TouchEventData;->mYCoord:F

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mPressure:F

    iget v5, p1, Lcom/adobe/air/TouchEventData;->mPointerID:I

    iget v6, p1, Lcom/adobe/air/TouchEventData;->mContactX:F

    iget v7, p1, Lcom/adobe/air/TouchEventData;->mContactY:F

    iget-boolean v8, p1, Lcom/adobe/air/TouchEventData;->mIsPrimaryPoint:Z

    iget-object v9, p1, Lcom/adobe/air/TouchEventData;->mHistory:[F

    iget v10, p1, Lcom/adobe/air/TouchEventData;->mMetaState:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/adobe/air/customHandler;->nativeOnTouchCallback(IFFFIFFZ[FI)Z

    goto :goto_0

    .line 36
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x461

    if-ne v0, v1, :cond_2

    .line 38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/air/KeyEventData;

    .line 39
    iget v1, p1, Lcom/adobe/air/KeyEventData;->mKeyAction:I

    iget v2, p1, Lcom/adobe/air/KeyEventData;->mKeyCode:I

    iget v3, p1, Lcom/adobe/air/KeyEventData;->mUnicode:I

    iget-boolean v4, p1, Lcom/adobe/air/KeyEventData;->mAlt:Z

    iget-boolean v5, p1, Lcom/adobe/air/KeyEventData;->mShift:Z

    iget-boolean v6, p1, Lcom/adobe/air/KeyEventData;->mSym:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/customHandler;->nativeOnKeyCallback(IIIZZZ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public native nativeOnKeyCallback(IIIZZZ)Z
.end method

.method public native nativeOnTouchCallback(IFFFIFFZ[FI)Z
.end method
