.class Lcom/ironsource/mediationsdk/RVListenerWrapper$10;
.super Ljava/lang/Object;
.source "RVListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

.field final synthetic val$adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

.field final synthetic val$available:Z


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->val$available:Z

    iput-object p3, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->val$adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$200(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->val$available:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$200(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->val$adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$900(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;->onAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 172
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdAvailable() adInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->val$adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$1000(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$10;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$200(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;->onAdUnavailable()V

    .line 175
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "onAdUnavailable()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
