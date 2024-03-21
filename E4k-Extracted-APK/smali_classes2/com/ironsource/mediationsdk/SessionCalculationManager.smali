.class public final Lcom/ironsource/mediationsdk/SessionCalculationManager;
.super Ljava/lang/Object;
.source "SessionCalculationManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/SessionCalculationManager$SessionCalcEventTask;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/ironsource/mediationsdk/SessionCalculationManager;",
        "",
        "()V",
        "calculator",
        "Lcom/ironsource/lifecycle/ForegroundTimeCalculator;",
        "init",
        "",
        "SessionCalcEventTask",
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
.field private calculator:Lcom/ironsource/lifecycle/ForegroundTimeCalculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 2

    .line 31
    new-instance v0, Lcom/ironsource/mediationsdk/SessionCalculationManager$SessionCalcEventTask;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/SessionCalculationManager$SessionCalcEventTask;-><init>(Lcom/ironsource/mediationsdk/SessionCalculationManager;)V

    .line 32
    new-instance v1, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;

    check-cast v0, Lcom/ironsource/lifecycle/SessionCalcTask;

    invoke-direct {v1, v0}, Lcom/ironsource/lifecycle/ForegroundTimeCalculator;-><init>(Lcom/ironsource/lifecycle/SessionCalcTask;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/SessionCalculationManager;->calculator:Lcom/ironsource/lifecycle/ForegroundTimeCalculator;

    return-void
.end method
