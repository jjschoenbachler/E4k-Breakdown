.class public final Lkotlin/script/experimental/api/ScriptEvaluator$DefaultImpls;
.super Ljava/lang/Object;
.source "scriptEvaluation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/api/ScriptEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic invoke$default(Lkotlin/script/experimental/api/ScriptEvaluator;Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 195
    sget-object p2, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;->INSTANCE:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;

    check-cast p2, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    .line 193
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lkotlin/script/experimental/api/ScriptEvaluator;->invoke(Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invoke"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
