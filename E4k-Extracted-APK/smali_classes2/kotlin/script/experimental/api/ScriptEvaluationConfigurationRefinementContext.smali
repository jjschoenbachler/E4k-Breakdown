.class public final Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;
.super Ljava/lang/Object;
.source "scriptData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;",
        "",
        "compiledScript",
        "Lkotlin/script/experimental/api/CompiledScript;",
        "evaluationConfiguration",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "contextData",
        "Lkotlin/script/experimental/api/ScriptEvaluationContextData;",
        "(Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationContextData;)V",
        "getCompiledScript",
        "()Lkotlin/script/experimental/api/CompiledScript;",
        "getContextData",
        "()Lkotlin/script/experimental/api/ScriptEvaluationContextData;",
        "getEvaluationConfiguration",
        "()Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final compiledScript:Lkotlin/script/experimental/api/CompiledScript;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationContextData;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/api/CompiledScript;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/api/ScriptEvaluationContextData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "compiledScript"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evaluationConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->compiledScript:Lkotlin/script/experimental/api/CompiledScript;

    .line 180
    iput-object p2, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    .line 181
    iput-object p3, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationContextData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 178
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;-><init>(Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationContextData;)V

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationContextData;ILjava/lang/Object;)Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->compiledScript:Lkotlin/script/experimental/api/CompiledScript;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->copy(Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationContextData;)Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lkotlin/script/experimental/api/CompiledScript;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->compiledScript:Lkotlin/script/experimental/api/CompiledScript;

    return-object v0
.end method

.method public final component2()Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    return-object v0
.end method

.method public final component3()Lkotlin/script/experimental/api/ScriptEvaluationContextData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    return-object v0
.end method

.method public final copy(Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationContextData;)Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;
    .locals 1
    .param p1    # Lkotlin/script/experimental/api/CompiledScript;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/api/ScriptEvaluationContextData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "compiledScript"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evaluationConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;-><init>(Lkotlin/script/experimental/api/CompiledScript;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/script/experimental/api/ScriptEvaluationContextData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->compiledScript:Lkotlin/script/experimental/api/CompiledScript;

    iget-object v3, p1, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->compiledScript:Lkotlin/script/experimental/api/CompiledScript;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    iget-object v3, p1, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    iget-object p1, p1, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCompiledScript()Lkotlin/script/experimental/api/CompiledScript;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 179
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->compiledScript:Lkotlin/script/experimental/api/CompiledScript;

    return-object v0
.end method

.method public final getContextData()Lkotlin/script/experimental/api/ScriptEvaluationContextData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 181
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    return-object v0
.end method

.method public final getEvaluationConfiguration()Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 180
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->compiledScript:Lkotlin/script/experimental/api/CompiledScript;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    invoke-virtual {v1}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    invoke-virtual {v1}, Lkotlin/script/experimental/api/ScriptEvaluationContextData;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScriptEvaluationConfigurationRefinementContext(compiledScript="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->compiledScript:Lkotlin/script/experimental/api/CompiledScript;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", evaluationConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->evaluationConfiguration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contextData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;->contextData:Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
