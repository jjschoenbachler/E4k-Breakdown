.class Lcom/adobe/air/AndroidCamera$2;
.super Ljava/lang/Object;
.source "AndroidCamera.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidCamera;->registerCallbacks(Z)V
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

    .line 576
    iput-object p1, p0, Lcom/adobe/air/AndroidCamera$2;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 5

    .line 579
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$2;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$2;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$100(Lcom/adobe/air/AndroidCamera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$2;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$700(Lcom/adobe/air/AndroidCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$2;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$2;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/adobe/air/AndroidCamera;->access$800(Lcom/adobe/air/AndroidCamera;J)V

    goto :goto_0

    .line 584
    :cond_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne p1, v0, :cond_1

    .line 585
    iget-object p1, p0, Lcom/adobe/air/AndroidCamera$2;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$2;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/adobe/air/AndroidCamera;->access$900(Lcom/adobe/air/AndroidCamera;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method
