.class Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController$NativeAPI;->onLoadBannerSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

.field final synthetic val$adContainer:Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

.field final synthetic val$adInstanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;)V
    .locals 0

    .line 2081
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->val$adInstanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->val$adContainer:Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2084
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBannerLoadSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$5000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/internals/DSBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->val$adInstanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->val$adContainer:Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSBannerListener;->onBannerLoadSuccess(Ljava/lang/String;Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;)V

    return-void
.end method
