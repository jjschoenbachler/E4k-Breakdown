.class public final Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;
.super Ljava/lang/Object;
.source "scriptIdeConfiguration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"1\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"+\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00020\u0001*\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\r\u0010\u0008\"\u0015\u0010\u000f\u001a\u00020\u0010*\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "acceptedLocations",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "",
        "Lkotlin/script/experimental/api/ScriptAcceptedLocation;",
        "Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;",
        "getAcceptedLocations$annotations",
        "(Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;)V",
        "getAcceptedLocations",
        "(Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "acceptedLocations$delegate",
        "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;",
        "dependenciesSources",
        "Lkotlin/script/experimental/api/ScriptDependency;",
        "getDependenciesSources",
        "dependenciesSources$delegate",
        "ide",
        "Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder;",
        "Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;",
        "getIde",
        "(Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder;",
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

.field private static final acceptedLocations$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dependenciesSources$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 30
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;

    const-string v4, "kotlin-scripting-common"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    const-string v4, "dependenciesSources"

    const-string v5, "getDependenciesSources(Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 34
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v4, Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;

    const-string v5, "kotlin-scripting-common"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v4

    const-string v5, "acceptedLocations"

    const-string v6, "getAcceptedLocations(Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 30
    sget-object v1, Lkotlin/script/experimental/util/PropertiesCollection;->Companion:Lkotlin/script/experimental/util/PropertiesCollection$Companion;

    const/4 v2, 0x0

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v5, v2}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Ljava/lang/Object;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object v1

    sput-object v1, Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;->dependenciesSources$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    .line 34
    sget-object v1, Lkotlin/script/experimental/util/PropertiesCollection;->Companion:Lkotlin/script/experimental/util/PropertiesCollection$Companion;

    .line 36
    new-array v5, v0, [Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    sget-object v6, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Sources:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    aput-object v6, v5, v3

    .line 37
    sget-object v6, Lkotlin/script/experimental/api/ScriptAcceptedLocation;->Tests:Lkotlin/script/experimental/api/ScriptAcceptedLocation;

    aput-object v6, v5, v4

    .line 35
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 34
    invoke-static {v1, v4, v3, v0, v2}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Ljava/lang/Object;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;->acceptedLocations$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    return-void
.end method

.method public static final getAcceptedLocations(Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;",
            ")",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/ScriptAcceptedLocation;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;->acceptedLocations$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    sget-object v1, Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAcceptedLocations$annotations(Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;)V
    .locals 0

    return-void
.end method

.method public static final getDependenciesSources(Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;",
            ")",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/ScriptDependency;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;->dependenciesSources$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    sget-object v1, Lkotlin/script/experimental/api/ScriptIdeConfigurationKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object p0

    return-object p0
.end method

.method public static final getIde(Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder;
    .locals 1
    .param p0    # Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p0, Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder;

    invoke-direct {p0}, Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder;-><init>()V

    return-object p0
.end method
