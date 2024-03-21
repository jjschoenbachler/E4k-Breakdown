.class Lkankan/wheel/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lkankan/wheel/widget/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkankan/wheel/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkankan/wheel/widget/WheelView;


# direct methods
.method constructor <init>(Lkankan/wheel/widget/WheelView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 189
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$000(Lkankan/wheel/widget/WheelView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 191
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$002(Lkankan/wheel/widget/WheelView;Z)Z

    .line 194
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$202(Lkankan/wheel/widget/WheelView;I)I

    .line 195
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    return-void
.end method

.method public onJustify()V
    .locals 3

    .line 199
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$200(Lkankan/wheel/widget/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$300(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$200(Lkankan/wheel/widget/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkankan/wheel/widget/WheelScroller;->scroll(II)V

    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0, p1}, Lkankan/wheel/widget/WheelView;->access$100(Lkankan/wheel/widget/WheelView;I)V

    .line 178
    iget-object p1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {p1}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result p1

    .line 179
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$200(Lkankan/wheel/widget/WheelView;)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 180
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0, p1}, Lkankan/wheel/widget/WheelView;->access$202(Lkankan/wheel/widget/WheelView;I)I

    .line 181
    iget-object p1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {p1}, Lkankan/wheel/widget/WheelView;->access$300(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;

    move-result-object p1

    invoke-virtual {p1}, Lkankan/wheel/widget/WheelScroller;->stopScrolling()V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$200(Lkankan/wheel/widget/WheelView;)I

    move-result v0

    neg-int p1, p1

    if-ge v0, p1, :cond_1

    .line 183
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0, p1}, Lkankan/wheel/widget/WheelView;->access$202(Lkankan/wheel/widget/WheelView;I)I

    .line 184
    iget-object p1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {p1}, Lkankan/wheel/widget/WheelView;->access$300(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;

    move-result-object p1

    invoke-virtual {p1}, Lkankan/wheel/widget/WheelScroller;->stopScrolling()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 171
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$002(Lkankan/wheel/widget/WheelView;Z)Z

    .line 172
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->notifyScrollingListenersAboutStart()V

    return-void
.end method
