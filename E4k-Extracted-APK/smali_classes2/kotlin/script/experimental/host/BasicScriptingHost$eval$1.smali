.class final Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BasicScriptingHost.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/host/BasicScriptingHost;->eval(Lkotlin/script/experimental/api/SourceCode;Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;)Lkotlin/script/experimental/api/ResultWithDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
        "+",
        "Lkotlin/script/experimental/api/EvaluationResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicScriptingHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicScriptingHost.kt\nkotlin/script/experimental/host/BasicScriptingHost$eval$1\n+ 2 errorHandling.kt\nkotlin/script/experimental/api/ErrorHandlingKt\n*L\n1#1,51:1\n135#2,4:52\n*E\n*S KotlinDebug\n*F\n+ 1 BasicScriptingHost.kt\nkotlin/script/experimental/host/BasicScriptingHost$eval$1\n*L\n46#1,4:52\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics;",
        "Lkotlin/script/experimental/api/EvaluationResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.script.experimental.host.BasicScriptingHost$eval$1"
    f = "BasicScriptingHost.kt"
    i = {}
    l = {
        0x2e,
        0x2f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $compilationConfiguration:Lkotlin/script/experimental/api/ScriptCompilationConfiguration;

.field final synthetic $evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

.field final synthetic $script:Lkotlin/script/experimental/api/SourceCode;

.field L$0:Ljava/lang/Object;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lkotlin/script/experimental/host/BasicScriptingHost;


# direct methods
.method constructor <init>(Lkotlin/script/experimental/host/BasicScriptingHost;Lkotlin/script/experimental/api/SourceCode;Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/host/BasicScriptingHost;",
            "Lkotlin/script/experimental/api/SourceCode;",
            "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->this$0:Lkotlin/script/experimental/host/BasicScriptingHost;

    iput-object p2, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->$script:Lkotlin/script/experimental/api/SourceCode;

    iput-object p3, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->$compilationConfiguration:Lkotlin/script/experimental/api/ScriptCompilationConfiguration;

    iput-object p4, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->$evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;

    iget-object v1, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->this$0:Lkotlin/script/experimental/host/BasicScriptingHost;

    iget-object v2, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->$script:Lkotlin/script/experimental/api/SourceCode;

    iget-object v3, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->$compilationConfiguration:Lkotlin/script/experimental/api/ScriptCompilationConfiguration;

    iget-object v4, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->$evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;-><init>(Lkotlin/script/experimental/host/BasicScriptingHost;Lkotlin/script/experimental/api/SourceCode;Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v6, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1;TP2;)TR;"
        }
    .end annotation

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 45
    iget v1, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 46
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :pswitch_0
    iget-object v0, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->this$0:Lkotlin/script/experimental/host/BasicScriptingHost;

    invoke-virtual {p1}, Lkotlin/script/experimental/host/BasicScriptingHost;->getCompiler()Lkotlin/script/experimental/api/ScriptCompiler;

    move-result-object p1

    iget-object v1, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->$script:Lkotlin/script/experimental/api/SourceCode;

    iget-object v2, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->$compilationConfiguration:Lkotlin/script/experimental/api/ScriptCompilationConfiguration;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->label:I

    invoke-interface {p1, v1, v2, v3}, Lkotlin/script/experimental/api/ScriptCompiler;->invoke(Lkotlin/script/experimental/api/SourceCode;Lkotlin/script/experimental/api/ScriptCompilationConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    :goto_0
    check-cast p1, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    iget-object v1, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->this$0:Lkotlin/script/experimental/host/BasicScriptingHost;

    iget-object v2, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->$evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    .line 53
    instance-of v3, p1, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lkotlin/script/experimental/api/ResultWithDiagnostics;->getReports()Ljava/util/List;

    move-result-object v3

    check-cast p1, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;

    invoke-virtual {p1}, Lkotlin/script/experimental/api/ResultWithDiagnostics$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/script/experimental/api/CompiledScript;

    .line 47
    invoke-virtual {v1}, Lkotlin/script/experimental/host/BasicScriptingHost;->getEvaluator()Lkotlin/script/experimental/api/ScriptEvaluator;

    move-result-object v1

    if-nez v2, :cond_1

    sget-object v2, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;->INSTANCE:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;

    check-cast v2, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    :cond_1
    iput-object v3, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p0, Lkotlin/script/experimental/host/BasicScriptingHost$eval$1;->label:I

    invoke-interface {v1, p1, v2, p0}, Lkotlin/script/experimental/api/ScriptEvaluator;->invoke(Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v3

    :goto_1
    check-cast p1, Lkotlin/script/experimental/api/ResultWithDiagnostics;

    invoke-static {v0, p1}, Lkotlin/script/experimental/api/ErrorHandlingKt;->plus(Ljava/util/List;Lkotlin/script/experimental/api/ResultWithDiagnostics;)Lkotlin/script/experimental/api/ResultWithDiagnostics;

    move-result-object p1

    goto :goto_2

    .line 54
    :cond_3
    instance-of v0, p1, Lkotlin/script/experimental/api/ResultWithDiagnostics$Failure;

    if-eqz v0, :cond_4

    :goto_2
    return-object p1

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
