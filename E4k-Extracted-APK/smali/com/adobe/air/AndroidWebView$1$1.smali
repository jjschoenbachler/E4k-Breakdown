.class Lcom/adobe/air/AndroidWebView$1$1;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView$1;->openFileChooser(Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/air/AndroidWebView$1;

.field final synthetic val$wrapper:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView$1;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$1$1;->this$1:Lcom/adobe/air/AndroidWebView$1;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$1$1;->val$wrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$1$1;->this$1:Lcom/adobe/air/AndroidWebView$1;

    invoke-static {p1}, Lcom/adobe/air/AndroidWebView$1;->access$700(Lcom/adobe/air/AndroidWebView$1;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    move-object p2, p1

    .line 451
    :goto_1
    iget-object p3, p0, Lcom/adobe/air/AndroidWebView$1$1;->this$1:Lcom/adobe/air/AndroidWebView$1;

    invoke-static {p3}, Lcom/adobe/air/AndroidWebView$1;->access$700(Lcom/adobe/air/AndroidWebView$1;)Landroid/webkit/ValueCallback;

    move-result-object p3

    invoke-interface {p3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 452
    iget-object p2, p0, Lcom/adobe/air/AndroidWebView$1$1;->this$1:Lcom/adobe/air/AndroidWebView$1;

    invoke-static {p2, p1}, Lcom/adobe/air/AndroidWebView$1;->access$702(Lcom/adobe/air/AndroidWebView$1;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 455
    :cond_3
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$1$1;->val$wrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {p1, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    return-void
.end method
