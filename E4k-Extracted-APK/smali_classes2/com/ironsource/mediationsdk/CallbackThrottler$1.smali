.class Lcom/ironsource/mediationsdk/CallbackThrottler$1;
.super Ljava/lang/Object;
.source "CallbackThrottler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/CallbackThrottler;->onAdLoadFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/CallbackThrottler;

.field final synthetic val$adUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field final synthetic val$adUnitString:Ljava/lang/String;

.field final synthetic val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/CallbackThrottler;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/ironsource/mediationsdk/CallbackThrottler$1;->this$0:Lcom/ironsource/mediationsdk/CallbackThrottler;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/CallbackThrottler$1;->val$adUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/CallbackThrottler$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/CallbackThrottler$1;->val$adUnitString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "onAdLoadFailed - invokeCallback after delaying"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/CallbackThrottler$1;->this$0:Lcom/ironsource/mediationsdk/CallbackThrottler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/CallbackThrottler$1;->val$adUnit:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/CallbackThrottler$1;->val$error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->access$000(Lcom/ironsource/mediationsdk/CallbackThrottler;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 66
    iget-object v0, p0, Lcom/ironsource/mediationsdk/CallbackThrottler$1;->this$0:Lcom/ironsource/mediationsdk/CallbackThrottler;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/CallbackThrottler;->access$100(Lcom/ironsource/mediationsdk/CallbackThrottler;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/CallbackThrottler$1;->val$adUnitString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
