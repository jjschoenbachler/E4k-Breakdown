.class Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$3;
.super Ljava/lang/Object;
.source "BNDemandOnlyListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->onBannerAdClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$3;->this$0:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "onBannerAdClicked()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$3;->this$0:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper$3;->this$0:Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/BNDemandOnlyListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;->onBannerAdClicked()V

    :cond_0
    return-void
.end method
