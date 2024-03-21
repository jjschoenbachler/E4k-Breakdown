.class Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;
.super Ljava/lang/Object;
.source "ISNAdViewContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->performCleanup(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

.field final synthetic val$failureCallback:Ljava/lang/String;

.field final synthetic val$successCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

    iput-object p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;->val$successCallback:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;->val$failureCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

    invoke-static {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;)Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->removeView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

    invoke-static {v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;)Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;->val$successCallback:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;->val$failureCallback:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->performCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;->access$002(Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    return-void
.end method
