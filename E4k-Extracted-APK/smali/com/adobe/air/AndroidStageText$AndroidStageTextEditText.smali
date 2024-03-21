.class public Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;
.super Landroid/widget/EditText;
.source "AndroidStageText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidStageTextEditText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText$DelayedTransparentRegionUpdate;
    }
.end annotation


# instance fields
.field private mLastFocusDirection:I

.field private m_focusedChildView:Landroid/view/View;

.field private m_hasFocus:Z

.field private m_inRequestChildFocus:Z

.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 250
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_inRequestChildFocus:Z

    const/4 p2, 0x0

    .line 245
    iput-object p2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_focusedChildView:Landroid/view/View;

    .line 246
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    .line 247
    iput p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    .line 253
    invoke-virtual {p0, p2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setCompoundDrawablePadding(I)V

    .line 255
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 261
    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_inRequestChildFocus:Z

    const/4 p2, 0x0

    .line 245
    iput-object p2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_focusedChildView:Landroid/view/View;

    .line 246
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    .line 247
    iput p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 266
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_inRequestChildFocus:Z

    const/4 p2, 0x0

    .line 245
    iput-object p2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_focusedChildView:Landroid/view/View;

    .line 246
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    .line 247
    iput p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    return-void
.end method

.method private dispatchFocusEvent(ZI)V
    .locals 6

    .line 362
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 365
    :cond_0
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    .line 367
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 369
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return-void

    .line 376
    :cond_1
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 377
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    invoke-virtual {v1, v0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 383
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2}, Lcom/adobe/air/AndroidStageText;->access$700(Lcom/adobe/air/AndroidStageText;JI)V

    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->requestFocus()Z

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$902(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 466
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$1102(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 468
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 273
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 276
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 277
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 278
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v3}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v4}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v5}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 279
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 280
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 285
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 395
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p2, :cond_0

    .line 398
    iget p2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    :cond_0
    const/4 p3, 0x0

    .line 400
    iput p3, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->dispatchFocusEvent(ZI)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$1400(Lcom/adobe/air/AndroidStageText;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/adobe/air/AndroidStageText;->access$1500(Lcom/adobe/air/AndroidStageText;JII)Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 520
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    .line 560
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$1400(Lcom/adobe/air/AndroidStageText;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/adobe/air/AndroidStageText;->access$1500(Lcom/adobe/air/AndroidStageText;JII)Z

    .line 546
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 549
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/adobe/air/AndroidStageText;->access$1402(Lcom/adobe/air/AndroidStageText;Z)Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 344
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 347
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 349
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$000(Lcom/adobe/air/AndroidStageText;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 351
    invoke-static {v0, p1}, Lcom/adobe/air/AndroidStageText;->access$002(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 352
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lcom/adobe/air/AndroidStageText;->access$200(Lcom/adobe/air/AndroidStageText;J)V

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {p1}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    move-result-object p1

    new-instance p2, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText$DelayedTransparentRegionUpdate;

    const/16 v2, 0xa

    const/16 v3, 0x4b

    iget-object p3, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {p3}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    move-result-object v4

    iget-object p3, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {p3}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v5

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText$DelayedTransparentRegionUpdate;-><init>(Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;IILcom/adobe/air/AndroidStageText$AndroidStageTextImpl;Lcom/adobe/air/AIRWindowSurfaceView;)V

    const-wide/16 p3, 0x4b

    invoke-virtual {p1, p2, p3, p4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 2

    .line 488
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 489
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/adobe/air/AndroidStageText;->access$1102(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 491
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {p1}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {p1}, Lcom/adobe/air/AndroidStageText;->access$1200(Lcom/adobe/air/AndroidStageText;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {p1}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object p1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$1300(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 494
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/adobe/air/AndroidStageText;->access$1000(Lcom/adobe/air/AndroidStageText;J)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 407
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 409
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 410
    invoke-static {p1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-static {p1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/adobe/air/AndroidStageText;->access$800(Lcom/adobe/air/AndroidStageText;J)V

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$1202(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 477
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    .line 479
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$1202(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 480
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$902(Lcom/adobe/air/AndroidStageText;Z)Z

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 423
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 426
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const v5, 0xff00

    and-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    :cond_0
    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    .line 445
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$900(Lcom/adobe/air/AndroidStageText;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v2}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/adobe/air/AndroidStageText;->access$1000(Lcom/adobe/air/AndroidStageText;J)V

    .line 452
    :cond_4
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1, v0}, Lcom/adobe/air/AndroidStageText;->access$902(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 456
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$1100(Lcom/adobe/air/AndroidStageText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v2}, Lcom/adobe/air/AndroidStageText;->access$1300(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 571
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/adobe/air/AndroidStageText;->access$1000(Lcom/adobe/air/AndroidStageText;J)V

    .line 572
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$1102(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 574
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
