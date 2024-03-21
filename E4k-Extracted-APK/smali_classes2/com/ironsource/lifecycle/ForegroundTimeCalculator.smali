.class public final Lcom/ironsource/lifecycle/ForegroundTimeCalculator;
.super Ljava/lang/Object;
.source "ForegroundTimeCalculator.kt"

# interfaces
.implements Lcom/ironsource/lifecycle/IronsourceLifecycleListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u0008\u0010\r\u001a\u00020\u0008H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/ironsource/lifecycle/ForegroundTimeCalculator;",
        "Lcom/ironsource/lifecycle/IronsourceLifecycleListener;",
        "task",
        "Lcom/ironsource/lifecycle/SessionCalcTask;",
        "(Lcom/ironsource/lifecycle/SessionCalcTask;)V",
        "sessionStartTime",
        "",
        "appPaused",
        "",
        "appResumed",
        "appStarted",
        "appStopped",
        "getSessionTime",
        "updateSessionStartTime",
        "environment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private sessionStartTime:J

.field private final task:Lcom/ironsource/lifecycle/SessionCalcTask;


# direct methods
.method public constructor <init>(Lcom/ironsource/lifecycle/SessionCalcTask;)V
    .locals 1
    .param p1    # Lcom/ironsource/lifecycle/SessionCalcTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;->task:Lcom/ironsource/lifecycle/SessionCalcTask;

    .line 12
    invoke-static {}, Lcom/ironsource/lifecycle/IronsourceLifecycleManager;->getInstance()Lcom/ironsource/lifecycle/IronsourceLifecycleManager;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/ironsource/lifecycle/IronsourceLifecycleListener;

    invoke-virtual {p1, v0}, Lcom/ironsource/lifecycle/IronsourceLifecycleManager;->addObserver(Lcom/ironsource/lifecycle/IronsourceLifecycleListener;)V

    .line 14
    invoke-direct {p0}, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;->updateSessionStartTime()V

    return-void
.end method

.method private final getSessionTime()J
    .locals 4

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;->sessionStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final updateSessionStartTime()V
    .locals 2

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;->sessionStartTime:J

    return-void
.end method


# virtual methods
.method public appPaused()V
    .locals 0

    return-void
.end method

.method public appResumed()V
    .locals 0

    return-void
.end method

.method public appStarted()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;->updateSessionStartTime()V

    return-void
.end method

.method public appStopped()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;->task:Lcom/ironsource/lifecycle/SessionCalcTask;

    invoke-direct {p0}, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;->getSessionTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/SessionCalcTask;->setTimeInForeground(Ljava/lang/Long;)V

    .line 31
    iget-object v0, p0, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;->task:Lcom/ironsource/lifecycle/SessionCalcTask;

    invoke-virtual {v0}, Lcom/ironsource/lifecycle/SessionCalcTask;->run()V

    return-void
.end method
