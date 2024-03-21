.class Lcom/adobe/air/AndroidCamera$1;
.super Ljava/lang/Object;
.source "AndroidCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidCamera;->startCapture(IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidCamera;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidCamera;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    .line 500
    :try_start_0
    iget-object p2, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p2}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p2}, Lcom/adobe/air/AndroidCamera;->access$100(Lcom/adobe/air/AndroidCamera;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 501
    iget-object p2, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    invoke-static {p2, v0, v1, p1}, Lcom/adobe/air/AndroidCamera;->access$200(Lcom/adobe/air/AndroidCamera;J[B)V

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p1}, Lcom/adobe/air/AndroidCamera;->access$300(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object p1

    iget-object p2, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p2}, Lcom/adobe/air/AndroidCamera;->access$400(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 507
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object p2, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p2}, Lcom/adobe/air/AndroidCamera;->access$500(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/adobe/air/AndroidCamera;->access$302(Lcom/adobe/air/AndroidCamera;[B)[B

    goto :goto_0

    .line 509
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object p2, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p2}, Lcom/adobe/air/AndroidCamera;->access$400(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/adobe/air/AndroidCamera;->access$302(Lcom/adobe/air/AndroidCamera;[B)[B

    .line 512
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p1}, Lcom/adobe/air/AndroidCamera;->access$600(Lcom/adobe/air/AndroidCamera;)Landroid/hardware/Camera;

    move-result-object p1

    iget-object p2, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {p2}, Lcom/adobe/air/AndroidCamera;->access$300(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
