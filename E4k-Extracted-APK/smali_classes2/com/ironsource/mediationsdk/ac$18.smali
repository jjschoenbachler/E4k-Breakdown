.class final Lcom/ironsource/mediationsdk/ac$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ac;->a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/ironsource/mediationsdk/ac;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ac;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ac$18;->b:Lcom/ironsource/mediationsdk/ac;

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/ac$18;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac$18;->b:Lcom/ironsource/mediationsdk/ac;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ac;->a(Lcom/ironsource/mediationsdk/ac;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac$18;->b:Lcom/ironsource/mediationsdk/ac;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ac;->a(Lcom/ironsource/mediationsdk/ac;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/ac$18;->a:Z

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac$18;->b:Lcom/ironsource/mediationsdk/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRewardedVideoAvailabilityChanged() available="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/ac$18;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/ac;->a(Lcom/ironsource/mediationsdk/ac;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
