.class public Lcom/adobe/air/wand/view/GestureEventData;
.super Ljava/lang/Object;
.source "GestureEventData.java"


# instance fields
.field public mIsTransform:Z

.field public mOffsetX:F

.field public mOffsetY:F

.field public mPhase:I

.field public mRotation:F

.field public mScaleX:F

.field public mScaleY:F

.field public mType:I

.field public mXCoord:F

.field public mYCoord:F


# direct methods
.method public constructor <init>(IIZFFFFFFF)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mPhase:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mType:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mXCoord:F

    iput v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mYCoord:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    iput v1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mScaleX:F

    iput v1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mScaleY:F

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mIsTransform:Z

    .line 29
    iput v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mRotation:F

    .line 30
    iput v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetX:F

    iput v0, p0, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetY:F

    .line 34
    iput p1, p0, Lcom/adobe/air/wand/view/GestureEventData;->mPhase:I

    .line 35
    iput p2, p0, Lcom/adobe/air/wand/view/GestureEventData;->mType:I

    .line 36
    iput-boolean p3, p0, Lcom/adobe/air/wand/view/GestureEventData;->mIsTransform:Z

    .line 37
    iput p4, p0, Lcom/adobe/air/wand/view/GestureEventData;->mXCoord:F

    .line 38
    iput p5, p0, Lcom/adobe/air/wand/view/GestureEventData;->mYCoord:F

    .line 39
    iput p6, p0, Lcom/adobe/air/wand/view/GestureEventData;->mScaleX:F

    .line 40
    iput p7, p0, Lcom/adobe/air/wand/view/GestureEventData;->mScaleY:F

    .line 41
    iput p8, p0, Lcom/adobe/air/wand/view/GestureEventData;->mRotation:F

    .line 42
    iput p9, p0, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetX:F

    .line 43
    iput p10, p0, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetY:F

    return-void
.end method