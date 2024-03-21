.class public final Lkotlin/script/experimental/util/FilterByAnnotationTypeKt;
.super Ljava/lang/Object;
.source "filterByAnnotationType.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nfilterByAnnotationType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 filterByAnnotationType.kt\nkotlin/script/experimental/util/FilterByAnnotationTypeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,15:1\n734#2:16\n825#2,2:17\n1517#2:19\n1588#2,3:20\n*E\n*S KotlinDebug\n*F\n+ 1 filterByAnnotationType.kt\nkotlin/script/experimental/util/FilterByAnnotationTypeKt\n*L\n11#1:16\n11#1,2:17\n12#1:19\n12#1,3:20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001b\n\u0002\u0010\u001c\n\u0000\u001a/\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\n\u0008\u0000\u0010\u0003\u0018\u0001*\u00020\u0004*\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0005H\u0086\u0008\u00a8\u0006\u0006"
    }
    d2 = {
        "filterByAnnotationType",
        "",
        "Lkotlin/script/experimental/api/ScriptSourceAnnotation;",
        "A",
        "",
        "",
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


# direct methods
.method public static final synthetic filterByAnnotationType(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/script/experimental/api/ScriptSourceAnnotation;

    .line 11
    invoke-virtual {v2}, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "A"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v2, v2, Ljava/lang/annotation/Annotation;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Lkotlin/script/experimental/api/ScriptSourceAnnotation;

    .line 14
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_2
    check-cast p0, Ljava/util/List;

    return-object p0
.end method
