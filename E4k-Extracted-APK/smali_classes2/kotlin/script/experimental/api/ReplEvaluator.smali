.class public interface abstract Lkotlin/script/experimental/api/ReplEvaluator;
.super Ljava/lang/Object;
.source "replEvaluation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CompiledSnippetT::",
        "Lkotlin/script/experimental/api/CompiledScript;",
        "EvaluatedSnippetT::",
        "Lkotlin/script/experimental/api/EvaluatedSnippet;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u00060\u0002j\u0002`\u0003*\u0008\u0008\u0001\u0010\u0004*\u00020\u00052\u00020\u0006J5\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00080\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010R\u001a\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ReplEvaluator;",
        "CompiledSnippetT",
        "Lkotlin/script/experimental/api/CompiledScript;",
        "Lkotlin/script/experimental/api/CompiledSnippet;",
        "EvaluatedSnippetT",
        "Lkotlin/script/experimental/api/EvaluatedSnippet;",
        "",
        "lastEvaluatedSnippet",
        "Lkotlin/script/experimental/util/LinkedSnippet;",
        "getLastEvaluatedSnippet",
        "()Lkotlin/script/experimental/util/LinkedSnippet;",
        "eval",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics;",
        "snippet",
        "configuration",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "(Lkotlin/script/experimental/util/LinkedSnippet;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract eval(Lkotlin/script/experimental/util/LinkedSnippet;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/script/experimental/util/LinkedSnippet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/LinkedSnippet<",
            "+TCompiledSnippetT;>;",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+",
            "Lkotlin/script/experimental/util/LinkedSnippet<",
            "TEvaluatedSnippetT;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getLastEvaluatedSnippet()Lkotlin/script/experimental/util/LinkedSnippet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/script/experimental/util/LinkedSnippet<",
            "TEvaluatedSnippetT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
