.class Lcom/ironsource/mediationsdk/RVListenerWrapper$7;
.super Ljava/lang/Object;
.source "RVListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RVListenerWrapper;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$7;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$7;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$7;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/RVListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdClosed()V

    .line 132
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RVListenerWrapper$7;->this$0:Lcom/ironsource/mediationsdk/RVListenerWrapper;

    const-string v1, "onRewardedVideoAdClosed()"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->access$100(Lcom/ironsource/mediationsdk/RVListenerWrapper;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
