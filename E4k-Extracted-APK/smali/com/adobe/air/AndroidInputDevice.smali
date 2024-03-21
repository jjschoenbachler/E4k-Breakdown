.class Lcom/adobe/air/AndroidInputDevice;
.super Ljava/lang/Object;
.source "AndroidInputManager.java"


# instance fields
.field private mDevice:Landroid/view/InputDevice;

.field private mInputControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adobe/air/AndroidInputControl;",
            ">;"
        }
    .end annotation
.end field

.field private mNumControls:I


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 6

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mDevice:Landroid/view/InputDevice;

    .line 262
    iput-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    .line 267
    iput-object p1, p0, Lcom/adobe/air/AndroidInputDevice;->mDevice:Landroid/view/InputDevice;

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    .line 270
    invoke-virtual {p1}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object p1

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputDevice$MotionRange;

    .line 273
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 277
    new-instance v2, Lcom/adobe/air/AndroidInputControl;

    sget-object v3, Lcom/adobe/air/ControlType;->AXIS:Lcom/adobe/air/ControlType;

    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/adobe/air/AndroidInputControl;-><init>(Lcom/adobe/air/ControlType;IFF)V

    .line 278
    iget-object v1, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget v1, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    goto :goto_0

    .line 283
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 285
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/adobe/air/AndroidInputDevice;->isGameKey(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 287
    new-instance p1, Lcom/adobe/air/AndroidInputControl;

    sget-object v1, Lcom/adobe/air/ControlType;->BUTTON:Lcom/adobe/air/ControlType;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/adobe/air/AndroidInputControl;-><init>(Lcom/adobe/air/ControlType;IFF)V

    .line 290
    iget-object v1, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget p1, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static isGameKey(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 331
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getInputControl(I)Lcom/adobe/air/AndroidInputControl;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/air/AndroidInputControl;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumControls()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/adobe/air/AndroidInputDevice;->mNumControls:I

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/adobe/air/AndroidInputDevice;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 370
    :goto_0
    iget-object v1, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/AndroidInputControl;

    .line 373
    invoke-virtual {v1}, Lcom/adobe/air/AndroidInputControl;->getType()I

    move-result v2

    sget-object v3, Lcom/adobe/air/ControlType;->AXIS:Lcom/adobe/air/ControlType;

    invoke-virtual {v3}, Lcom/adobe/air/ControlType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 375
    invoke-virtual {v1}, Lcom/adobe/air/AndroidInputControl;->getCode()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 376
    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidInputControl;->setData(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 343
    :goto_0
    iget-object v2, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/adobe/air/AndroidInputDevice;->mInputControls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/air/AndroidInputControl;

    .line 346
    invoke-virtual {v2}, Lcom/adobe/air/AndroidInputControl;->getType()I

    move-result v3

    sget-object v4, Lcom/adobe/air/ControlType;->BUTTON:Lcom/adobe/air/ControlType;

    invoke-virtual {v4}, Lcom/adobe/air/ControlType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 347
    invoke-virtual {v2}, Lcom/adobe/air/AndroidInputControl;->getCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    .line 357
    invoke-virtual {v2, p1}, Lcom/adobe/air/AndroidInputControl;->setData(F)V

    return v4

    :pswitch_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 354
    invoke-virtual {v2, p1}, Lcom/adobe/air/AndroidInputControl;->setData(F)V

    return v4

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
