.class final Lcom/ironsource/mediationsdk/k$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/k;->b(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/k;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/k;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/k$10;->a:Lcom/ironsource/mediationsdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/k$10;->a:Lcom/ironsource/mediationsdk/k;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/k;->a(Lcom/ironsource/mediationsdk/k;)Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/k$10;->a:Lcom/ironsource/mediationsdk/k;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/k;->a(Lcom/ironsource/mediationsdk/k;)Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdScreenDismissed()V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "onBannerAdScreenDismissed()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
