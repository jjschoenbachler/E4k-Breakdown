.class Lcom/ironsource/mediationsdk/BNListenerWrapper$5;
.super Ljava/lang/Object;
.source "BNListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/BNListenerWrapper;->onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/BNListenerWrapper;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/BNListenerWrapper;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper$5;->this$0:Lcom/ironsource/mediationsdk/BNListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper$5;->this$0:Lcom/ironsource/mediationsdk/BNListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/BNListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BNListenerWrapper$5;->this$0:Lcom/ironsource/mediationsdk/BNListenerWrapper;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/BNListenerWrapper;->access$000(Lcom/ironsource/mediationsdk/BNListenerWrapper;)Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdScreenPresented()V

    .line 103
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "onBannerAdScreenPresented()"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
