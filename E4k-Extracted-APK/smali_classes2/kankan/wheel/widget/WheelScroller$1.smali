.class Lkankan/wheel/widget/WheelScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkankan/wheel/widget/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkankan/wheel/widget/WheelScroller;


# direct methods
.method constructor <init>(Lkankan/wheel/widget/WheelScroller;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 167
    iget-object p1, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lkankan/wheel/widget/WheelScroller;->access$002(Lkankan/wheel/widget/WheelScroller;I)I

    .line 170
    iget-object p1, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {p1}, Lkankan/wheel/widget/WheelScroller;->access$100(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {p1}, Lkankan/wheel/widget/WheelScroller;->access$000(Lkankan/wheel/widget/WheelScroller;)I

    move-result v2

    neg-float p1, p4

    float-to-int v4, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 171
    iget-object p1, p0, Lkankan/wheel/widget/WheelScroller$1;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {p1, p2}, Lkankan/wheel/widget/WheelScroller;->access$200(Lkankan/wheel/widget/WheelScroller;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
