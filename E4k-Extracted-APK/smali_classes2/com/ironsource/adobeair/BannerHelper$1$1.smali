.class Lcom/ironsource/adobeair/BannerHelper$1$1;
.super Ljava/lang/Object;
.source "BannerHelper.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adobeair/BannerHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/adobeair/BannerHelper$1;


# direct methods
.method constructor <init>(Lcom/ironsource/adobeair/BannerHelper$1;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerAdClicked()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "onBannerAdClicked"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdLeftApplication()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "onBannerAdLeftApplication"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adobeair/BannerHelper$1$1$2;

    invoke-direct {v1, p0}, Lcom/ironsource/adobeair/BannerHelper$1$1$2;-><init>(Lcom/ironsource/adobeair/BannerHelper$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    iget-object v0, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "onBannerAdLoadFailed"

    iget-object v2, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v2, v2, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v2, p1}, Lcom/ironsource/adobeair/BannerHelper;->access$500(Lcom/ironsource/adobeair/BannerHelper;Lcom/ironsource/mediationsdk/logger/IronSourceError;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdLoaded()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adobeair/BannerHelper$1$1$1;

    invoke-direct {v1, p0}, Lcom/ironsource/adobeair/BannerHelper$1$1$1;-><init>(Lcom/ironsource/adobeair/BannerHelper$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    iget-object v0, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "onBannerAdLoaded"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdScreenDismissed()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "onBannerAdScreenDismissed"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdScreenPresented()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v0, v0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "onBannerAdScreenPresented"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
