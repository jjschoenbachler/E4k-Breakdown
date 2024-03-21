.class final Lcom/ironsource/mediationsdk/SessionCalculationManager$SessionCalcEventTask;
.super Lcom/ironsource/lifecycle/SessionCalcTask;
.source "SessionCalculationManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/SessionCalculationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionCalcEventTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/ironsource/mediationsdk/SessionCalculationManager$SessionCalcEventTask;",
        "Lcom/ironsource/lifecycle/SessionCalcTask;",
        "(Lcom/ironsource/mediationsdk/SessionCalculationManager;)V",
        "run",
        "",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/SessionCalculationManager;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/SessionCalculationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/ironsource/mediationsdk/SessionCalculationManager$SessionCalcEventTask;->this$0:Lcom/ironsource/mediationsdk/SessionCalculationManager;

    invoke-direct {p0}, Lcom/ironsource/lifecycle/SessionCalcTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "duration"

    .line 21
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/SessionCalculationManager$SessionCalcEventTask;->getTimeInForeground()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 23
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 25
    :goto_0
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x2c

    invoke-direct {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 26
    sget-object v0, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method
