.class public final Lkotlin/script/experimental/api/ScriptDataKt;
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
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u001a%\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0016\u0010\u0015\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00140\u0016\"\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0017\"/\u0010\u0000\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00030\u00020\u0001*\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\"+\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00020\u0001*\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0008\u001a\u0004\u0008\u000c\u0010\r\"+\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00020\u0001*\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0011\u0010\u0006\u00a8\u0006\u0018"
    }
    d2 = {
        "collectedAnnotations",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "",
        "Lkotlin/script/experimental/api/ScriptSourceAnnotation;",
        "Lkotlin/script/experimental/api/ScriptCollectedDataKeys;",
        "getCollectedAnnotations",
        "(Lkotlin/script/experimental/api/ScriptCollectedDataKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "collectedAnnotations$delegate",
        "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;",
        "commandLineArgs",
        "",
        "Lkotlin/script/experimental/api/ScriptEvaluationContextDataKeys;",
        "getCommandLineArgs",
        "(Lkotlin/script/experimental/api/ScriptEvaluationContextDataKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "commandLineArgs$delegate",
        "foundAnnotations",
        "",
        "getFoundAnnotations",
        "foundAnnotations$delegate",
        "merge",
        "Lkotlin/script/experimental/api/ScriptEvaluationContextData;",
        "contexts",
        "",
        "([Lkotlin/script/experimental/api/ScriptEvaluationContextData;)Lkotlin/script/experimental/api/ScriptEvaluationContextData;",
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

.field private static final collectedAnnotations$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final commandLineArgs$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final foundAnnotations$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 114
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lkotlin/script/experimental/api/ScriptDataKt;

    const-string v4, "kotlin-scripting-common"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v3

    const-string v4, "foundAnnotations"

    const-string v5, "getFoundAnnotations(Lkotlin/script/experimental/api/ScriptCollectedDataKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 119
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v4, Lkotlin/script/experimental/api/ScriptDataKt;

    const-string v5, "kotlin-scripting-common"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v4

    const-string v5, "collectedAnnotations"

    const-string v6, "getCollectedAnnotations(Lkotlin/script/experimental/api/ScriptCollectedDataKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 173
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v4, Lkotlin/script/experimental/api/ScriptDataKt;

    const-string v5, "kotlin-scripting-common"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v4

    const-string v5, "commandLineArgs"

    const-string v6, "getCommandLineArgs(Lkotlin/script/experimental/api/ScriptEvaluationContextDataKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sput-object v1, Lkotlin/script/experimental/api/ScriptDataKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 114
    sget-object v1, Lkotlin/script/experimental/util/PropertiesCollection;->Companion:Lkotlin/script/experimental/util/PropertiesCollection$Companion;

    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v0, v2}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Ljava/lang/Object;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object v1

    sput-object v1, Lkotlin/script/experimental/api/ScriptDataKt;->foundAnnotations$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    .line 119
    sget-object v1, Lkotlin/script/experimental/util/PropertiesCollection;->Companion:Lkotlin/script/experimental/util/PropertiesCollection$Companion;

    sget-object v5, Lkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2;->INSTANCE:Lkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v5, v3, v4, v2}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object v1

    sput-object v1, Lkotlin/script/experimental/api/ScriptDataKt;->collectedAnnotations$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    .line 173
    sget-object v1, Lkotlin/script/experimental/util/PropertiesCollection;->Companion:Lkotlin/script/experimental/util/PropertiesCollection$Companion;

    invoke-static {v1, v2, v3, v0, v2}, Lkotlin/script/experimental/util/PropertiesCollection$Companion;->key$default(Lkotlin/script/experimental/util/PropertiesCollection$Companion;Ljava/lang/Object;ZILjava/lang/Object;)Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    move-result-object v0

    sput-object v0, Lkotlin/script/experimental/api/ScriptDataKt;->commandLineArgs$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    return-void
.end method

.method public static final getCollectedAnnotations(Lkotlin/script/experimental/api/ScriptCollectedDataKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/ScriptCollectedDataKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/ScriptCollectedDataKeys;",
            ")",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/ScriptSourceAnnotation<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lkotlin/script/experimental/api/ScriptDataKt;->collectedAnnotations$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    sget-object v1, Lkotlin/script/experimental/api/ScriptDataKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object p0

    return-object p0
.end method

.method public static final getCommandLineArgs(Lkotlin/script/experimental/api/ScriptEvaluationContextDataKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/ScriptEvaluationContextDataKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/ScriptEvaluationContextDataKeys;",
            ")",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lkotlin/script/experimental/api/ScriptDataKt;->commandLineArgs$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    sget-object v1, Lkotlin/script/experimental/api/ScriptDataKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object p0

    return-object p0
.end method

.method public static final getFoundAnnotations(Lkotlin/script/experimental/api/ScriptCollectedDataKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 3
    .param p0    # Lkotlin/script/experimental/api/ScriptCollectedDataKeys;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/ScriptCollectedDataKeys;",
            ")",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lkotlin/script/experimental/api/ScriptDataKt;->foundAnnotations$delegate:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;

    sget-object v1, Lkotlin/script/experimental/api/ScriptDataKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs merge([Lkotlin/script/experimental/api/ScriptEvaluationContextData;)Lkotlin/script/experimental/api/ScriptEvaluationContextData;
    .locals 5
    .param p0    # [Lkotlin/script/experimental/api/ScriptEvaluationContextData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "contexts"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    array-length v1, p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v3}, Lkotlin/script/experimental/api/ScriptEvaluationContextData;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_3

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    goto :goto_1

    .line 166
    :cond_3
    new-instance p0, Lkotlin/script/experimental/api/ScriptEvaluationContextData;

    check-cast v0, Ljava/lang/Iterable;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lkotlin/script/experimental/api/ScriptEvaluationContextData;-><init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    :goto_1
    return-object v1
.end method
