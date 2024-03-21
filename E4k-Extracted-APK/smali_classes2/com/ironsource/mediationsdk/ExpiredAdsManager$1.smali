.class Lcom/ironsource/mediationsdk/ExpiredAdsManager$1;
.super Ljava/lang/Object;
.source "ExpiredAdsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/ExpiredAdsManager;-><init>(ILcom/ironsource/mediationsdk/AdExpirationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/ExpiredAdsManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/ExpiredAdsManager;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager$1;->this$0:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 29
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "loaded ads are expired"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager$1;->this$0:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->access$000(Lcom/ironsource/mediationsdk/ExpiredAdsManager;)Lcom/ironsource/mediationsdk/AdExpirationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ExpiredAdsManager$1;->this$0:Lcom/ironsource/mediationsdk/ExpiredAdsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ExpiredAdsManager;->access$000(Lcom/ironsource/mediationsdk/ExpiredAdsManager;)Lcom/ironsource/mediationsdk/AdExpirationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/AdExpirationListener;->onAdExpired()V

    :cond_0
    return-void
.end method
