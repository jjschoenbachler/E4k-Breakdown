.class Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;
.super Ljava/lang/Object;
.source "ISDemandOnlyBannerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->sendBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

.field final synthetic val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->access$000(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBannerAdLoadFailed error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 108
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->access$100(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->access$100(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->removeView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;->access$102(Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout;Landroid/view/View;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ISDemandOnlyBannerLayout$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
