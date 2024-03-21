.class final Lcom/ironsource/mediationsdk/j$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/j;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/j;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/j$3;->a:Lcom/ironsource/mediationsdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "onBannerAdClicked()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/j$3;->a:Lcom/ironsource/mediationsdk/j;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/mediationsdk/j;)Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/j$3;->a:Lcom/ironsource/mediationsdk/j;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/mediationsdk/j;)Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;->onBannerAdClicked()V

    :cond_0
    return-void
.end method
