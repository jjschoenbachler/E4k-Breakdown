.class public final Lkotlin/script/experimental/api/ReplDataKt;
.super Ljava/lang/Object;
.source "replData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\";\u0010\u0003\u001a\u001e\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005j\u0002`\t0\u0004*\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\"\u0015\u0010\u000f\u001a\u00020\u0010*\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\"%\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004*\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000e\u001a\u0004\u0008\u0015\u0010\u000c*.\u0010\u0019\"\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00052\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a8\u0006\u001a"
    }
    d2 = {
        "REPL_SNIPPET_FIRST_GEN",
        "",
        "REPL_SNIPPET_FIRST_NO",
        "makeSnippetIdentifier",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "Lkotlin/Function2;",
        "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
        "Lkotlin/script/experimental/api/ReplSnippetId;",
        "",
        "Lkotlin/script/experimental/api/MakeSnippetIdentifier;",
        "Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;",
        "getMakeSnippetIdentifier",
        "(Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "makeSnippetIdentifier$delegate",
        "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;",
        "repl",
        "Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationBuilder;",
        "Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;",
        "getRepl",
        "(Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationBuilder;",
        "resultFieldPrefix",
        "getResultFieldPrefix",
        "resultFieldPrefix$delegate",
        "makeDefaultSnippetIdentifier",
        "snippetId",
        "MakeSnippetIdentifier",
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

.field public static final REPL_SNIPPET_FIRST_GEN:I = 0x1

.field public static final REPL_SNIPPET_FIRST_NO:I = 0x1

.field private static final makeSnippetIdentifier$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final resultFieldPrefix$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 50
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lkotlin/script/experimental/api/ReplDataKt;

    const-string v4, "kotlin-scripting-common"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    const-string v4, "resultFieldPrefix"

    const-string v5, "getResultFieldPrefix(Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 57
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v4, Lkotlin/script/experimental/api/ReplDataKt;

    const-string v5, "kotlin-scripting-common"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v4

    const-string v5, "makeSnippetIdentifier"

    const-string v6, "getMakeSnippetIdentifier(Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lkotlin/script/experimental/api/ReplDataKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 50
    sget-object v1, Lkotlin/script/experimental/util/PropertiesCollection;->Companion:Lkotlin/script/experimental/util/PropertiesCollection$Companion;

    const-string v2, "res"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Ljava/lang/Object;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object v1

    sput-object v1, Lkotlin/script/experimental/api/ReplDataKt;->resultFieldPrefix$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    .line 57
    sget-object v1, Lkotlin/script/experimental/util/PropertiesCollection;->Companion:Lkotlin/script/experimental/util/PropertiesCollection$Companion;

    .line 58
    sget-object v2, Lkotlin/script/experimental/api/ReplDataKt$makeSnippetIdentifier$2;->INSTANCE:Lkotlin/script/experimental/api/ReplDataKt$makeSnippetIdentifier$2;

    .line 57
    invoke-static {v1, v2, v3, v0, v4}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Ljava/lang/Object;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/script/experimental/api/ReplDataKt;->makeSnippetIdentifier$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    return-void
.end method

.method public static final getMakeSnippetIdentifier(Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;",
            ")",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
            "Lkotlin/script/experimental/api/ReplSnippetId;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lkotlin/script/experimental/api/ReplDataKt;->makeSnippetIdentifier$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    sget-object v1, Lkotlin/script/experimental/api/ReplDataKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object p0

    return-object p0
.end method

.method public static final getRepl(Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationBuilder;
    .locals 1
    .param p0    # Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance p0, Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationBuilder;

    invoke-direct {p0}, Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationBuilder;-><init>()V

    return-object p0
.end method

.method public static final getResultFieldPrefix(Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/ReplScriptCompilationConfigurationKeys;",
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
    sget-object v0, Lkotlin/script/experimental/api/ReplDataKt;->resultFieldPrefix$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    sget-object v1, Lkotlin/script/experimental/api/ReplDataKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object p0

    return-object p0
.end method

.method public static final makeDefaultSnippetIdentifier(Lkotlin/script/experimental/api/ReplSnippetId;)Ljava/lang/String;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/ReplSnippetId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "snippetId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Line_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lkotlin/script/experimental/api/ReplSnippetId;->getNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lkotlin/script/experimental/api/ReplSnippetId;->getGeneration()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "_gen_"

    invoke-interface {p0}, Lkotlin/script/experimental/api/ReplSnippetId;->getGeneration()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
