.class Lcom/ironsource/mediationsdk/RVListenerWrapper$14;
.super Ljava/lang/Object;
.source "RVListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

.field final synthetic val$adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

.field final synthetic val$placement:Lcom/ironsource/mediationsdk/model/Placement;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->val$placement:Lcom/ironsource/mediationsdk/model/Placement;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->val$adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$200(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$200(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->val$placement:Lcom/ironsource/mediationsdk/model/Placement;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->val$adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$1100(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;->onAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    .line 231
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdRewarded() placement = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->val$placement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", adInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$14;->val$adInfo:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$1200(Lcom/ironsource/mediationsdk/RVListenerWrapper;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
