.class Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;
.super Ljava/lang/Object;
.source "AndroidCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewSurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidCamera;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidCamera;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 615
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adobe/air/AndroidCamera;->access$702(Lcom/adobe/air/AndroidCamera;Z)Z

    .line 616
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p1}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p1}, Lcom/adobe/air/AndroidCamera;->access$100(Lcom/adobe/air/AndroidCamera;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 617
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/adobe/air/AndroidCamera;->access$800(Lcom/adobe/air/AndroidCamera;J)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 623
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/adobe/air/AndroidCamera;->access$702(Lcom/adobe/air/AndroidCamera;Z)Z

    .line 625
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p1}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p1}, Lcom/adobe/air/AndroidCamera;->access$100(Lcom/adobe/air/AndroidCamera;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 626
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/adobe/air/AndroidCamera;->access$900(Lcom/adobe/air/AndroidCamera;J)V

    :cond_0
    return-void
.end method