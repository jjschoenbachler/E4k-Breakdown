.class Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$1;
.super Ljava/lang/Object;
.source "BNDemandOnlyListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

.field final synthetic val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$1;->this$0:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$1;->this$0:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$1;->this$0:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 37
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBannerAdLoadFailed() error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    return-void
.end method
