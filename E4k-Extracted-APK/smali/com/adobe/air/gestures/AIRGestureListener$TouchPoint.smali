.class Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;
.super Ljava/lang/Object;
.source "AIRGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/gestures/AIRGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchPoint"
.end annotation


# instance fields
.field private pid:I

.field final synthetic this$0:Lcom/adobe/air/gestures/AIRGestureListener;

.field private x:F

.field private y:F


# direct methods
.method constructor <init>(Lcom/adobe/air/gestures/AIRGestureListener;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->this$0:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F

    .line 122
    iput p1, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F

    const/4 p1, 0x0

    .line 123
    iput p1, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I

    return-void
.end method

.method constructor <init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->this$0:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p2, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F

    .line 128
    iput p3, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F

    .line 129
    iput p4, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;FFI)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->assign(FFI)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I

    return p0
.end method

.method static synthetic access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F
    .locals 0

    .line 117
    iget p0, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F

    return p0
.end method

.method static synthetic access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F
    .locals 0

    .line 117
    iget p0, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F

    return p0
.end method

.method private assign(FFI)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F

    .line 143
    iput p2, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F

    .line 144
    iput p3, p0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I

    return-void
.end method
