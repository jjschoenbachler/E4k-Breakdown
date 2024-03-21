.class public interface abstract Lkotlin/script/experimental/api/EvaluatedSnippet;
.super Ljava/lang/Object;
.source "replEvaluation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0016\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/script/experimental/api/EvaluatedSnippet;",
        "",
        "compiledSnippet",
        "Lkotlin/script/experimental/api/CompiledScript;",
        "Lkotlin/script/experimental/api/CompiledSnippet;",
        "getCompiledSnippet",
        "()Lkotlin/script/experimental/api/CompiledScript;",
        "configuration",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "getConfiguration",
        "()Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "result",
        "Lkotlin/script/experimental/api/ResultValue;",
        "getResult",
        "()Lkotlin/script/experimental/api/ResultValue;",
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


# virtual methods
.method public abstract getCompiledSnippet()Lkotlin/script/experimental/api/CompiledScript;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getConfiguration()Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getResult()Lkotlin/script/experimental/api/ResultValue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
