.class public final Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;
.super Lkotlin/script/experimental/util/PropertiesCollection$Builder;
.source "scriptEvaluation.kt"

# interfaces
.implements Lkotlin/script/experimental/api/ScriptEvaluationConfigurationKeys;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0008\u0000\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfigurationKeys;",
        "Lkotlin/script/experimental/util/PropertiesCollection$Builder;",
        "baseEvaluationConfigurations",
        "",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "(Ljava/lang/Iterable;)V",
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


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseEvaluationConfigurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method
