.class public interface abstract Lkotlin/script/experimental/api/ReplCodeAnalyzer;
.super Ljava/lang/Object;
.source "replAnalysis.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J/\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ReplCodeAnalyzer;",
        "",
        "analyze",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics;",
        "Lkotlin/script/experimental/api/ReplAnalyzerResult;",
        "snippet",
        "Lkotlin/script/experimental/api/SourceCode;",
        "cursor",
        "Lkotlin/script/experimental/api/SourceCode$Position;",
        "configuration",
        "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
        "(Lkotlin/script/experimental/api/SourceCode;Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract analyze(Lkotlin/script/experimental/api/SourceCode;Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/script/experimental/api/SourceCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/SourceCode$Position;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/api/ScriptCompilationConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/SourceCode;",
            "Lkotlin/script/experimental/api/SourceCode$Position;",
            "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "Lkotlin/script/experimental/api/ReplAnalyzerResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
