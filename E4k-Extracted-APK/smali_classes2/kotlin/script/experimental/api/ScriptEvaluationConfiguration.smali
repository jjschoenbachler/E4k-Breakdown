.class public Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
.super Lkotlin/script/experimental/util/PropertiesCollection;
.source "scriptEvaluation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;,
        Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Companion;,
        Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u000f2\u00020\u0001:\u0003\u000e\u000f\u0010B\"\u0008\u0016\u0012\u0019\u0008\u0002\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0002\u0010\u0007B6\u0008\u0016\u0012\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00000\t\"\u00020\u0000\u0012\u0019\u0008\u0002\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0002\u0010\nB,\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000c\u0012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "Lkotlin/script/experimental/util/PropertiesCollection;",
        "body",
        "Lkotlin/Function1;",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "baseConfigurations",
        "",
        "([Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/jvm/functions/Function1;)V",
        "baseEvaluationConfigurations",
        "",
        "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)V",
        "Builder",
        "Companion",
        "Default",
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
.field public static final Companion:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;->Companion:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseEvaluationConfigurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;

    invoke-direct {v0, p1}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection;-><init>(Ljava/util/Map;)V

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
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-direct {p0, v0, p1}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;-><init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 25
    sget-object p1, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$1;->INSTANCE:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-direct {p0, p1}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>([Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # [Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseConfigurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;-><init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>([Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 27
    sget-object p2, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$2;->INSTANCE:Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;-><init>([Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
