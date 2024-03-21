.class final Lkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2;
.super Lkotlin/jvm/internal/Lambda;
.source "scriptData.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/api/ScriptDataKt;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/script/experimental/util/PropertiesCollection;",
        "Ljava/util/List<",
        "+",
        "Lkotlin/script/experimental/api/ScriptSourceAnnotation<",
        "*>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nscriptData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 scriptData.kt\nkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n1517#2:183\n1588#2,3:184\n*E\n*S KotlinDebug\n*F\n+ 1 scriptData.kt\nkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2\n*L\n120#1:183\n120#1,3:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0002\u0018\u00010\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/script/experimental/api/ScriptSourceAnnotation;",
        "Lkotlin/script/experimental/util/PropertiesCollection;"
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
.field public static final INSTANCE:Lkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2;

    invoke-direct {v0}, Lkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2;-><init>()V

    sput-object v0, Lkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2;->INSTANCE:Lkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2;

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

    .line 119
    check-cast p1, Lkotlin/script/experimental/util/PropertiesCollection;

    invoke-virtual {p0, p1}, Lkotlin/script/experimental/api/ScriptDataKt$collectedAnnotations$2;->invoke(Lkotlin/script/experimental/util/PropertiesCollection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/script/experimental/util/PropertiesCollection;)Ljava/util/List;
    .locals 4
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/api/ScriptSourceAnnotation<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lkotlin/script/experimental/api/ScriptCollectedData;->Companion:Lkotlin/script/experimental/api/ScriptCollectedData$Companion;

    check-cast v0, Lkotlin/script/experimental/api/ScriptCollectedDataKeys;

    invoke-static {v0}, Lkotlin/script/experimental/api/ScriptDataKt;->getFoundAnnotations(Lkotlin/script/experimental/api/ScriptCollectedDataKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/script/experimental/util/PropertiesCollection;->get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 184
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 185
    check-cast v2, Ljava/lang/annotation/Annotation;

    .line 120
    new-instance v3, Lkotlin/script/experimental/api/ScriptSourceAnnotation;

    invoke-direct {v3, v2, v0}, Lkotlin/script/experimental/api/ScriptSourceAnnotation;-><init>(Ljava/lang/annotation/Annotation;Lkotlin/script/experimental/api/SourceCode$LocationWithId;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    :goto_1
    return-object v0
.end method
