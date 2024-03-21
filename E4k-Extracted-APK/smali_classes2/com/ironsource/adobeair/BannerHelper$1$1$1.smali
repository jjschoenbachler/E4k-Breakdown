.class Lcom/ironsource/adobeair/BannerHelper$1$1$1;
.super Ljava/lang/Object;
.source "BannerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adobeair/BannerHelper$1$1;->onBannerAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ironsource/adobeair/BannerHelper$1$1;


# direct methods
.method constructor <init>(Lcom/ironsource/adobeair/BannerHelper$1$1;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ironsource/adobeair/BannerHelper$1$1$1;->this$2:Lcom/ironsource/adobeair/BannerHelper$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    invoke-static {}, Lcom/ironsource/adobeair/BannerHelper;->access$000()Lcom/ironsource/adobeair/BannerHelper;

    move-result-object v0

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adobeair/BannerHelper$1$1$1;->this$2:Lcom/ironsource/adobeair/BannerHelper$1$1;

    iget-object v1, v1, Lcom/ironsource/adobeair/BannerHelper$1$1;->this$1:Lcom/ironsource/adobeair/BannerHelper$1;

    iget-object v1, v1, Lcom/ironsource/adobeair/BannerHelper$1;->this$0:Lcom/ironsource/adobeair/BannerHelper;

    invoke-static {v1}, Lcom/ironsource/adobeair/BannerHelper;->access$100(Lcom/ironsource/adobeair/BannerHelper;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
