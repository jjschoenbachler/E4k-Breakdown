.class Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;
.super Ljava/lang/Object;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRWindowSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0

    .line 1762
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1766
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->performLongClick()Z

    return-void
.end method