.class public abstract Lkotlin/script/experimental/host/BasicScriptingHost;
.super Ljava/lang/Object;
.source "BasicScriptingHost.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J(\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J?\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u00152\'\u0010\u0016\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00150\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0017\u00a2\u0006\u0002\u0008\u001aH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/script/experimental/host/BasicScriptingHost;",
        "",
        "compiler",
        "Lkotlin/script/experimental/api/ScriptCompiler;",
        "evaluator",
        "Lkotlin/script/experimental/api/ScriptEvaluator;",
        "(Lkotlin/script/experimental/api/ScriptCompiler;Lkotlin/script/experimental/api/ScriptEvaluator;)V",
        "getCompiler",
        "()Lkotlin/script/experimental/api/ScriptCompiler;",
        "getEvaluator",
        "()Lkotlin/script/experimental/api/ScriptEvaluator;",
        "eval",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics;",
        "Lkotlin/script/experimental/api/EvaluationResult;",
        "script",
        "Lkotlin/script/experimental/api/SourceCode;",
        "compilationConfiguration",
        "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
        "evaluationConfiguration",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "runInCoroutineContext",
        "T",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "kotlin-scripting-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final compiler:Lkotlin/script/experimental/api/ScriptCompiler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final evaluator:Lkotlin/script/experimental/api/ScriptEvaluator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/script/experimental/api/ScriptCompiler;Lkotlin/script/experimental/api/ScriptEvaluator;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/api/ScriptCompiler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/ScriptEvaluator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "compiler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evaluator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lkotlin/script/experimental/host/BasicScriptingHost;->compiler:Lkotlin/script/experimental/api/ScriptCompiler;

    .line 30
    iput-object p2, p0, Lkotlin/script/experimental/host/BasicScriptingHost;->evaluator:Lkotlin/script/experimental/api/ScriptEvaluator;

    return-void
.end method


# virtual methods
.method public eval(Lkotlin/script/experimental/api/SourceCode;Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;)Lkotlin/script/experimental/api/ResultWithDiagnostics;
    .locals 7
    .param p1    # Lkotlin/script/experimental/api/SourceCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/ScriptCompilationConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/SourceCode;",
            "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            ")",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "Lkotlin/script/experimental/api/EvaluationResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compilationConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;-><init>(Lkotlin/script/experimental/host/BasicScriptingHost;Lkotlin/script/experimental/api/SourceCode;Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Lkotlin/script/experimental/host/BasicScriptingHost;->runInCoroutineContext(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    return-object p1
.end method

.method public final getCompiler()Lkotlin/script/experimental/api/ScriptCompiler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lkotlin/script/experimental/host/BasicScriptingHost;->compiler:Lkotlin/script/experimental/api/ScriptCompiler;

    return-object v0
.end method

.method public final getEvaluator()Lkotlin/script/experimental/api/ScriptEvaluator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lkotlin/script/experimental/host/BasicScriptingHost;->evaluator:Lkotlin/script/experimental/api/ScriptEvaluator;

    return-object v0
.end method

.method public runInCoroutineContext(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lkotlin/script/experimental/host/BasicScriptingHost$runInCoroutineContext$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlin/script/experimental/host/BasicScriptingHost$runInCoroutineContext$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
