.class Lcom/ironsource/adobeair/BannerHelper$4;
.super Ljava/lang/Object;
.source "BannerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adobeair/BannerHelper;->hideBanner()V
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

    .line 223
    iput-object p1, p0, Lcom/ironsource/adobeair/BannerHelper$4;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 226
    invoke-static {}, Lcom/ironsource/adobeair/BannerHelper;->access$000()Lcom/ironsource/adobeair/BannerHelper;

    move-result-object v0

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$4;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$200(Lcom/ironsource/adobeair/BannerHelper;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$4;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$200(Lcom/ironsource/adobeair/BannerHelper;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 234
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
