.class Lcom/ironsource/mediationsdk/BNListenerWrapper$4;
.super Ljava/lang/Object;
.source "BNListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/BNListenerWrapper;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/BNListenerWrapper;

.field final synthetic val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper$4;->this$0:Lcom/ironsource/mediationsdk/BNListenerWrapper;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper$4;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper$4;->this$0:Lcom/ironsource/mediationsdk/BNListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->access$100(Lcom/ironsource/mediationsdk/BNListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper$4;->this$0:Lcom/ironsource/mediationsdk/BNListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->access$100(Lcom/ironsource/mediationsdk/BNListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper$4;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 89
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoadFailed() error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper$4;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
