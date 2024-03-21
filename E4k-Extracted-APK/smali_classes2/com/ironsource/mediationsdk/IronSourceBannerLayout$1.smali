.class Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;
.super Ljava/lang/Object;
.source "IronSourceBannerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field final synthetic val$isReload:Z


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->val$isReload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$000(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    return-void

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$100(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$100(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->removeView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$102(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Landroid/view/View;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->val$isReload:Z

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    return-void
.end method
