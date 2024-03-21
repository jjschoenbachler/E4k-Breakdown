.class Lkankan/wheel/widget/WheelScroller$2;
.super Landroid/os/Handler;
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

    .line 199
    iput-object p1, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v0}, Lkankan/wheel/widget/WheelScroller;->access$100(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 202
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v0}, Lkankan/wheel/widget/WheelScroller;->access$100(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 203
    iget-object v1, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v1}, Lkankan/wheel/widget/WheelScroller;->access$000(Lkankan/wheel/widget/WheelScroller;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 204
    iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v2, v0}, Lkankan/wheel/widget/WheelScroller;->access$002(Lkankan/wheel/widget/WheelScroller;I)I

    if-eqz v1, :cond_0

    .line 206
    iget-object v2, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v2}, Lkankan/wheel/widget/WheelScroller;->access$300(Lkankan/wheel/widget/WheelScroller;)Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 211
    :cond_0
    iget-object v1, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v1}, Lkankan/wheel/widget/WheelScroller;->access$100(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 212
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v0}, Lkankan/wheel/widget/WheelScroller;->access$100(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 213
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v0}, Lkankan/wheel/widget/WheelScroller;->access$100(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 215
    :cond_1
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v0}, Lkankan/wheel/widget/WheelScroller;->access$100(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {v0}, Lkankan/wheel/widget/WheelScroller;->access$400(Lkankan/wheel/widget/WheelScroller;)Landroid/os/Handler;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 217
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_3

    .line 218
    iget-object p1, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-static {p1}, Lkankan/wheel/widget/WheelScroller;->access$500(Lkankan/wheel/widget/WheelScroller;)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object p1, p0, Lkankan/wheel/widget/WheelScroller$2;->this$0:Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {p1}, Lkankan/wheel/widget/WheelScroller;->finishScrolling()V

    :goto_0
    return-void
.end method
