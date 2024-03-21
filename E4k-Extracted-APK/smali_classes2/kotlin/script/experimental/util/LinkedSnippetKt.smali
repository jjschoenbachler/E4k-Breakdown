.class public final Lkotlin/script/experimental/util/LinkedSnippetKt;
.super Ljava/lang/Object;
.source "linkedSnippet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u0002H\u0002\u00a2\u0006\u0002\u0010\u0004\u001a\u001f\u0010\u0005\u001a\u0004\u0018\u0001H\u0002\"\u0004\u0008\u0000\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007\u001a\u001e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\t\"\u0004\u0008\u0000\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0006\u001a8\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\n0\t\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\n*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\n0\u000c\u00a8\u0006\r"
    }
    d2 = {
        "add",
        "Lkotlin/script/experimental/util/LinkedSnippetImpl;",
        "T",
        "value",
        "(Lkotlin/script/experimental/util/LinkedSnippetImpl;Ljava/lang/Object;)Lkotlin/script/experimental/util/LinkedSnippetImpl;",
        "get",
        "Lkotlin/script/experimental/util/LinkedSnippet;",
        "(Lkotlin/script/experimental/util/LinkedSnippet;)Ljava/lang/Object;",
        "toList",
        "",
        "R",
        "mapper",
        "Lkotlin/Function1;",
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
.method public static final add(Lkotlin/script/experimental/util/LinkedSnippetImpl;Ljava/lang/Object;)Lkotlin/script/experimental/util/LinkedSnippetImpl;
    .locals 1
    .param p0    # Lkotlin/script/experimental/util/LinkedSnippetImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/LinkedSnippetImpl<",
            "TT;>;TT;)",
            "Lkotlin/script/experimental/util/LinkedSnippetImpl<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    new-instance v0, Lkotlin/script/experimental/util/LinkedSnippetImpl;

    invoke-direct {v0, p1, p0}, Lkotlin/script/experimental/util/LinkedSnippetImpl;-><init>(Ljava/lang/Object;Lkotlin/script/experimental/util/LinkedSnippetImpl;)V

    return-object v0
.end method

.method public static final get(Lkotlin/script/experimental/util/LinkedSnippet;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lkotlin/script/experimental/util/LinkedSnippet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/LinkedSnippet<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p0}, Lkotlin/script/experimental/util/LinkedSnippet;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final toList(Lkotlin/script/experimental/util/LinkedSnippet;)Ljava/util/List;
    .locals 1
    .param p0    # Lkotlin/script/experimental/util/LinkedSnippet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/LinkedSnippet<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    sget-object v0, Lkotlin/script/experimental/util/LinkedSnippetKt$toList$1;->INSTANCE:Lkotlin/script/experimental/util/LinkedSnippetKt$toList$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/script/experimental/util/LinkedSnippetKt;->toList(Lkotlin/script/experimental/util/LinkedSnippet;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final toList(Lkotlin/script/experimental/util/LinkedSnippet;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 2
    .param p0    # Lkotlin/script/experimental/util/LinkedSnippet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/LinkedSnippet<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0}, Lkotlin/script/experimental/util/LinkedSnippet;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {p0}, Lkotlin/script/experimental/util/LinkedSnippet;->getPrevious()Lkotlin/script/experimental/util/LinkedSnippet;

    move-result-object p0

    goto :goto_0

    .line 24
    :cond_0
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    return-object v0
.end method
