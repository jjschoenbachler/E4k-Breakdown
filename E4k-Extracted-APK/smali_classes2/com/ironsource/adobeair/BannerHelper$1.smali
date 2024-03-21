.class Lcom/ironsource/adobeair/BannerHelper$1;
.super Ljava/lang/Object;
.source "BannerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adobeair/BannerHelper;->loadAndShowBanner(Ljava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adobeair/BannerHelper;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$freContext:Lcom/adobe/fre/FREContext;

.field final synthetic val$height:I

.field final synthetic val$placementName:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ironsource/adobeair/BannerHelper;Lcom/adobe/fre/FREContext;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    iput-object p2, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    iput-object p3, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$description:Ljava/lang/String;

    iput p4, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$width:I

    iput p5, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$height:I

    iput p6, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$position:I

    iput-object p7, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$placementName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 68
    invoke-static {}, Lcom/ironsource/adobeair/BannerHelper;->access$000()Lcom/ironsource/adobeair/BannerHelper;

    move-result-object v0

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$100(Lcom/ironsource/adobeair/BannerHelper;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    invoke-virtual {v4}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Lcom/ironsource/adobeair/BannerHelper;->access$102(Lcom/ironsource/adobeair/BannerHelper;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 72
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    iget-object v3, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    invoke-virtual {v3}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v4}, Lcom/ironsource/adobeair/BannerHelper;->access$100(Lcom/ironsource/adobeair/BannerHelper;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    iget-object v3, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    invoke-virtual {v3}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    iget-object v5, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$description:Ljava/lang/String;

    iget v6, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$width:I

    iget v7, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$height:I

    invoke-static {v4, v5, v6, v7}, Lcom/ironsource/adobeair/BannerHelper;->access$300(Lcom/ironsource/adobeair/BannerHelper;Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ironsource/adobeair/BannerHelper;->access$202(Lcom/ironsource/adobeair/BannerHelper;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 77
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    iget v2, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$position:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x30

    goto :goto_0

    :cond_1
    const/16 v2, 0x50

    :goto_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    iget-object v2, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v2}, Lcom/ironsource/adobeair/BannerHelper;->access$100(Lcom/ironsource/adobeair/BannerHelper;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v3}, Lcom/ironsource/adobeair/BannerHelper;->access$200(Lcom/ironsource/adobeair/BannerHelper;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$200(Lcom/ironsource/adobeair/BannerHelper;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adobeair/BannerHelper$1$1;

    invoke-direct {v2, p0}, Lcom/ironsource/adobeair/BannerHelper$1$1;-><init>(Lcom/ironsource/adobeair/BannerHelper$1;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    .line 139
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$placementName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$200(Lcom/ironsource/adobeair/BannerHelper;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$placementName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$200(Lcom/ironsource/adobeair/BannerHelper;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 146
    :try_start_1
    iget-object v2, p0, Lcom/ironsource/adobeair/BannerHelper$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v3, "onBannerAdLoadFailed"

    iget-object v4, p0, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    const/16 v5, 0x1fd

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/ironsource/adobeair/BannerHelper;->access$600(Lcom/ironsource/adobeair/BannerHelper;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
