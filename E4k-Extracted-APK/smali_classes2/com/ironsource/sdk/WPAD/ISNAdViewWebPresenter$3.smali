.class Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;
.super Ljava/lang/Object;
.source "ISNAdViewWebPresenter.java"

# interfaces
.implements Lcom/ironsource/sdk/WPAD/ISNPresentableAdView$IErrorReportDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->createWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

.field final synthetic val$failureMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iput-object p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;->val$failureMethod:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Ljava/lang/String;)V
    .locals 3

    .line 199
    invoke-static {}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISNAdViewWebPresenter | WebViewClient | onRenderProcessGone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 203
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    :goto_0
    iget-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-static {p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$700(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)V

    return-void
.end method

.method public reportOnError(Ljava/lang/String;)V
    .locals 3

    .line 193
    invoke-static {}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISNAdViewWebPresenter | WebViewClient | reportOnError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter$3;->val$failureMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->sendErrorMessageToController(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
