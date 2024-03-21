.class public final Lkotlin/script/experimental/api/ReplAnalysisKt;
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
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\"+\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\"\'\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0001*\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u0006*\u0016\u0010\r\"\u0008\u0012\u0004\u0012\u00020\u000e0\u00022\u0008\u0012\u0004\u0012\u00020\u000e0\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "analysisDiagnostics",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "Lkotlin/sequences/Sequence;",
        "Lkotlin/script/experimental/api/ScriptDiagnostic;",
        "Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;",
        "getAnalysisDiagnostics",
        "(Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "analysisDiagnostics$delegate",
        "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;",
        "renderedResultType",
        "",
        "getRenderedResultType",
        "renderedResultType$delegate",
        "ReplCompletionResult",
        "Lkotlin/script/experimental/api/SourceCodeCompletionVariant;",
        "kotlin-scripting-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final analysisDiagnostics$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final renderedResultType$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 45
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lkotlin/script/experimental/api/ReplAnalysisKt;

    const-string v4, "kotlin-scripting-common"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    const-string v4, "analysisDiagnostics"

    const-string v5, "getAnalysisDiagnostics(Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 50
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v4, Lkotlin/script/experimental/api/ReplAnalysisKt;

    const-string v5, "kotlin-scripting-common"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v4

    const-string v5, "renderedResultType"

    const-string v6, "getRenderedResultType(Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lkotlin/script/experimental/api/ReplAnalysisKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 45
    sget-object v1, Lkotlin/script/experimental/util/PropertiesCollection;->Companion:Lkotlin/script/experimental/util/PropertiesCollection$Companion;

    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Ljava/lang/Object;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/script/experimental/api/ReplAnalysisKt;->analysisDiagnostics$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    .line 50
    sget-object v0, Lkotlin/script/experimental/util/PropertiesCollection;->Companion:Lkotlin/script/experimental/util/PropertiesCollection$Companion;

    const/4 v1, 0x3

    invoke-static {v0, v4, v3, v1, v4}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Ljava/lang/Object;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/script/experimental/api/ReplAnalysisKt;->renderedResultType$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    return-void
.end method

.method public static final getAnalysisDiagnostics(Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;",
            ")",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Lkotlin/sequences/Sequence<",
            "Lkotlin/script/experimental/api/ScriptDiagnostic;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lkotlin/script/experimental/api/ReplAnalysisKt;->analysisDiagnostics$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    sget-object v1, Lkotlin/script/experimental/api/ReplAnalysisKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object p0

    return-object p0
.end method

.method public static final getRenderedResultType(Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/ReplAnalyzerResultKeys;",
            ")",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lkotlin/script/experimental/api/ReplAnalysisKt;->renderedResultType$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    sget-object v1, Lkotlin/script/experimental/api/ReplAnalysisKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object p0

    return-object p0
.end method
