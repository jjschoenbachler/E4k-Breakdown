.class Lcom/ironsource/adobeair/BannerHelper$2;
.super Ljava/lang/Object;
.source "BannerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adobeair/BannerHelper;->destroyBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adobeair/BannerHelper;


# direct methods
.method constructor <init>(Lcom/ironsource/adobeair/BannerHelper;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/ironsource/adobeair/BannerHelper$2;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    invoke-static {}, Lcom/ironsource/adobeair/BannerHelper;->access$000()Lcom/ironsource/adobeair/BannerHelper;

    move-result-object v0

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$2;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$100(Lcom/ironsource/adobeair/BannerHelper;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 188
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$2;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$200(Lcom/ironsource/adobeair/BannerHelper;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$2;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$200(Lcom/ironsource/adobeair/BannerHelper;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSource;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 190
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$2;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ironsource/adobeair/BannerHelper;->access$202(Lcom/ironsource/adobeair/BannerHelper;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 195
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$2;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ironsource/adobeair/BannerHelper;->access$402(Lcom/ironsource/adobeair/BannerHelper;Z)Z

    .line 196
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
