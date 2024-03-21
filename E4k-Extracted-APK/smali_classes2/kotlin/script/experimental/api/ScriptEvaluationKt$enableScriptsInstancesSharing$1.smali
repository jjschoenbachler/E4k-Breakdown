.class final Lkotlin/script/experimental/api/ScriptEvaluationKt$enableScriptsInstancesSharing$1;
.super Lkotlin/jvm/internal/Lambda;
.source "scriptEvaluation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/api/ScriptEvaluationKt;->enableScriptsInstancesSharing(Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/script/experimental/api/ScriptEvaluationKt$enableScriptsInstancesSharing$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/script/experimental/api/ScriptEvaluationKt$enableScriptsInstancesSharing$1;

    invoke-direct {v0}, Lkotlin/script/experimental/api/ScriptEvaluationKt$enableScriptsInstancesSharing$1;-><init>()V

    sput-object v0, Lkotlin/script/experimental/api/ScriptEvaluationKt$enableScriptsInstancesSharing$1;->INSTANCE:Lkotlin/script/experimental/api/ScriptEvaluationKt$enableScriptsInstancesSharing$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;

    invoke-virtual {p0, p1}, Lkotlin/script/experimental/api/ScriptEvaluationKt$enableScriptsInstancesSharing$1;->invoke(Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;)V
    .locals 2
    .param p1    # Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    move-object v0, p1

    check-cast v0, Lkotlin/script/experimental/api/ScriptEvaluationConfigurationKeys;

    invoke-static {v0}, Lkotlin/script/experimental/api/ScriptEvaluationKt;->getScriptsInstancesSharing(Lkotlin/script/experimental/api/ScriptEvaluationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;->invoke(Lkotlin/script/experimental/util/PropertiesCollection$Key;Ljava/lang/Object;)V

    return-void
.end method
