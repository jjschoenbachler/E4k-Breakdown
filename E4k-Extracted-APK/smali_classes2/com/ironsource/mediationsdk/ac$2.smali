.class final Lcom/ironsource/mediationsdk/ac$2;
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

.field private synthetic b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

.field private synthetic c:Lcom/ironsource/mediationsdk/ac;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ac;ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ac$2;->c:Lcom/ironsource/mediationsdk/ac;

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/ac$2;->a:Z

    iput-object p3, p0, Lcom/ironsource/mediationsdk/ac$2;->b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac$2;->c:Lcom/ironsource/mediationsdk/ac;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ac;->b(Lcom/ironsource/mediationsdk/ac;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ac$2;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac$2;->c:Lcom/ironsource/mediationsdk/ac;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ac;->b(Lcom/ironsource/mediationsdk/ac;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ac$2;->c:Lcom/ironsource/mediationsdk/ac;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ac$2;->b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/ac;->g(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;->onAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdAvailable() adInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ac$2;->c:Lcom/ironsource/mediationsdk/ac;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ac$2;->b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/ac;->h(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac$2;->c:Lcom/ironsource/mediationsdk/ac;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ac;->b(Lcom/ironsource/mediationsdk/ac;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;->onAdUnavailable()V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "onAdUnavailable()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
