.class public final Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;
.super Ljava/lang/Object;
.source "scriptEvaluation.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/api/RefineEvaluationConfigurationData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B#\u0012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003j\u0002`\u0007\u00a2\u0006\u0002\u0010\u0008J\u001f\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003j\u0002`\u0007H\u00c6\u0003J)\u0010\u000c\u001a\u00020\u00002\u001e\u0008\u0002\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003j\u0002`\u0007H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\'\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003j\u0002`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;",
        "Ljava/io/Serializable;",
        "handler",
        "Lkotlin/Function1;",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;",
        "Lkotlin/script/experimental/api/ResultWithDiagnostics;",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "Lkotlin/script/experimental/api/RefineScriptEvaluationConfigurationHandler;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getHandler",
        "()Lkotlin/jvm/functions/Function1;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lkotlin/script/experimental/api/RefineEvaluationConfigurationData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final handler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->Companion:Lkotlin/script/experimental/api/RefineEvaluationConfigurationData$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;",
            "+",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->handler:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->handler:Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->copy(Lkotlin/jvm/functions/Function1;)Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->handler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final copy(Lkotlin/jvm/functions/Function1;)Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;",
            "+",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "+",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            ">;>;)",
            "Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;

    invoke-direct {v0, p1}, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;

    iget-object v1, p0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->handler:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->handler:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfigurationRefinementContext;",
            "Lkotlin/script/experimental/api/ResultWithDiagnostics<",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 117
    iget-object v0, p0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->handler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->handler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefineEvaluationConfigurationData(handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/RefineEvaluationConfigurationData;->handler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
