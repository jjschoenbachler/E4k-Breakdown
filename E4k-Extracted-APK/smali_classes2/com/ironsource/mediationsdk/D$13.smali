.class final Lcom/ironsource/mediationsdk/D$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/D;->c(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

.field private synthetic b:Lcom/ironsource/mediationsdk/D;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/D;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/D$13;->b:Lcom/ironsource/mediationsdk/D;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/D$13;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/D$13;->b:Lcom/ironsource/mediationsdk/D;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/D;->b(Lcom/ironsource/mediationsdk/D;)Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/D$13;->b:Lcom/ironsource/mediationsdk/D;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/D;->b(Lcom/ironsource/mediationsdk/D;)Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/D$13;->b:Lcom/ironsource/mediationsdk/D;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/D$13;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/D;->e(Lcom/ironsource/mediationsdk/D;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;->onAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdClosed() adInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/D$13;->b:Lcom/ironsource/mediationsdk/D;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/D$13;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/D;->f(Lcom/ironsource/mediationsdk/D;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
