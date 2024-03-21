.class public final Lkotlin/script/experimental/api/EvaluationResult;
.super Ljava/lang/Object;
.source "scriptEvaluation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlin/script/experimental/api/EvaluationResult;",
        "",
        "returnValue",
        "Lkotlin/script/experimental/api/ResultValue;",
        "configuration",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "(Lkotlin/script/experimental/api/ResultValue;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;)V",
        "getConfiguration",
        "()Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "getReturnValue",
        "()Lkotlin/script/experimental/api/ResultValue;",
        "component1",
        "component2",
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
.field private final configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final returnValue:Lkotlin/script/experimental/api/ResultValue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/script/experimental/api/ResultValue;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/api/ResultValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "returnValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/script/experimental/api/EvaluationResult;->returnValue:Lkotlin/script/experimental/api/ResultValue;

    iput-object p2, p0, Lkotlin/script/experimental/api/EvaluationResult;->configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/api/EvaluationResult;Lkotlin/script/experimental/api/ResultValue;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;ILjava/lang/Object;)Lkotlin/script/experimental/api/EvaluationResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lkotlin/script/experimental/api/EvaluationResult;->returnValue:Lkotlin/script/experimental/api/ResultValue;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lkotlin/script/experimental/api/EvaluationResult;->configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/api/EvaluationResult;->copy(Lkotlin/script/experimental/api/ResultValue;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;)Lkotlin/script/experimental/api/EvaluationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lkotlin/script/experimental/api/ResultValue;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/EvaluationResult;->returnValue:Lkotlin/script/experimental/api/ResultValue;

    return-object v0
.end method

.method public final component2()Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/EvaluationResult;->configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    return-object v0
.end method

.method public final copy(Lkotlin/script/experimental/api/ResultValue;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;)Lkotlin/script/experimental/api/EvaluationResult;
    .locals 1
    .param p1    # Lkotlin/script/experimental/api/ResultValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "returnValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/script/experimental/api/EvaluationResult;

    invoke-direct {v0, p1, p2}, Lkotlin/script/experimental/api/EvaluationResult;-><init>(Lkotlin/script/experimental/api/ResultValue;Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;)V

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
    instance-of v1, p1, Lkotlin/script/experimental/api/EvaluationResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/api/EvaluationResult;

    iget-object v1, p0, Lkotlin/script/experimental/api/EvaluationResult;->returnValue:Lkotlin/script/experimental/api/ResultValue;

    iget-object v3, p1, Lkotlin/script/experimental/api/EvaluationResult;->returnValue:Lkotlin/script/experimental/api/ResultValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lkotlin/script/experimental/api/EvaluationResult;->configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    iget-object p1, p1, Lkotlin/script/experimental/api/EvaluationResult;->configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConfiguration()Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 181
    iget-object v0, p0, Lkotlin/script/experimental/api/EvaluationResult;->configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    return-object v0
.end method

.method public final getReturnValue()Lkotlin/script/experimental/api/ResultValue;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 181
    iget-object v0, p0, Lkotlin/script/experimental/api/EvaluationResult;->returnValue:Lkotlin/script/experimental/api/ResultValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlin/script/experimental/api/EvaluationResult;->returnValue:Lkotlin/script/experimental/api/ResultValue;

    invoke-virtual {v0}, Lkotlin/script/experimental/api/ResultValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/EvaluationResult;->configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/script/experimental/api/EvaluationResult;->configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    invoke-virtual {v1}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;->hashCode()I

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

    const-string v1, "EvaluationResult(returnValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/EvaluationResult;->returnValue:Lkotlin/script/experimental/api/ResultValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/EvaluationResult;->configuration:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
