.class Lcom/adobe/air/AndroidMediaManager$1;
.super Ljava/lang/Object;
.source "AndroidMediaManager.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidMediaManager;->doCallbackRegistration(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidMediaManager;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidMediaManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/adobe/air/AndroidMediaManager$1;->this$0:Lcom/adobe/air/AndroidMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidMediaManager;->access$000()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return-void

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/AndroidMediaManager$1;->this$0:Lcom/adobe/air/AndroidMediaManager;

    invoke-static {p1}, Lcom/adobe/air/AndroidMediaManager;->access$100(Lcom/adobe/air/AndroidMediaManager;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/AndroidMediaManager$1;->this$0:Lcom/adobe/air/AndroidMediaManager;

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/adobe/air/AndroidMediaManager;->onBrowseImageResult(ILandroid/content/Intent;Landroid/app/Activity;)V

    .line 134
    iget-object p1, p0, Lcom/adobe/air/AndroidMediaManager$1;->this$0:Lcom/adobe/air/AndroidMediaManager;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidMediaManager;->unregisterCallbacks()V

    return-void
.end method
